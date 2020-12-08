#!/usr/bin/env python3

from sklearn.preprocessing import MinMaxScaler
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.metrics import classification_report

import numpy as np
import pandas as pd
import pickle
import sys

np.random.seed(123)

def generate_train_test_idx(groups, nbtest, nbtrain):
    train_idx = np.empty((0,), dtype='int')
    test_idx = np.empty((0,), dtype='int')
    classnames = np.unique(groups)
    for g in range(0, classnames.size):
        random_indices = np.random.permutation(np.arange(len(groups))[groups==g])
        train_idx = np.concatenate((train_idx, random_indices[nbtest:]))
        test_idx = np.concatenate((test_idx, random_indices[nbtest:nbtrain]))
    return (train_idx, test_idx);

def import_data(file_name, feature_names=[], label_name='None'):
    table = pd.read_csv(file_name, decimal=".", sep='\t')
    labels=[]
    if ( label_name != 'None' ):
        if type(label_name) ==  type([]):
            mask = []
            for lab in label_name:
                mask = table.columns.str.contains(lab)
                if any(mask):
                    labels = np.array(table[lab], dtype="str");
                    break
            if len(labels) == 0:
                raise TypeError("None of the labels {} was found in the table".format(label_name))
        else:
            labels = np.array(table[label_name], dtype="str")
    else:
        labels = []
    X= np.array(table[feature_names], dtype="float64")
    return X, labels


def training_process(file_name, model, features_to_use, cv):
    
    X, labels = import_data(file_name, features_to_use , ['ligandClass' ,'correctPocket'] )
    
    if len(labels.shape) == 2 and labels.shape[1] == 2:
        labels=labels[:,0] 
    classnames, Y = np.unique(labels, return_inverse=True)
    groupcount = np.bincount(Y)
    print("Training process")
    print ( "Options:\n\t File name: {:s}\n\t Model: {:s}\n\t Cross Validation: {}\n".format(file_name, model, cv))
    print("Total dataset size: ")
    print("\t- {:d} samples".format(X.shape[0]))
    print("\t- {:d} features".format(X.shape[1]))
    print("\t- {:d} classes : ".format(len(classnames)) + (" ".join("{} ({} samples)".format(classnames[k], groupcount[k]) for k in range(0, len(classnames))) ))
    cv_indexes = []
    groupcount = np.bincount(Y)
    mingroup = (int)(np.nanmin(groupcount))
    nbtest = (int)(np.round(mingroup / 3))
    nbtrain = (int)(mingroup-nbtest)
    print("\nDuring the training process, the cross validation process will use {} for each group as training and {} as test ".format(nbtrain, nbtest) )
    
    while ( len(cv_indexes) < cv) :
        cv_indexes.append(generate_train_test_idx(Y, nbtest, nbtrain))
    
    print("\nRescaling the data in [0-1]")
    scaler= MinMaxScaler(feature_range=(0,1))
    X = scaler.fit_transform(X, Y)
    
    ### Modify the following "parameters" to tune the grid search
    
    
    if (model == "mlp"):
        print("Neural network - MultiLayer Perceptron Classifier")
        parameters = {'activation':['relu'], 'solver' : ['adam', 'lbfgs'] , 
                      'hidden_layer_sizes' : [ (20,10,5),(15,10,5),(15,10),(10,5) ] }
        clf_model=MLPClassifier(max_iter=10000)
    elif (model == "rf"):
        print("Random Forest classifier")
        parameters = {'n_estimators':(100,150), 'criterion' : ('gini', 'entropy') , 'max_depth' : (None, 10, 20) , 'min_samples_split' : (2, 10 ,.10) }
        clf_model=RandomForestClassifier()
    elif (model == "svm"):
        print("Support Vector Machine classifier")
        parameters = {'C': [1, 10, 100, 1000], 'kernel' : ['rbf', 'linear' , 'poly', 'sigmoid'], 'gamma' : ['auto'] }
        clf_model=SVC()
        
    scores = ["accuracy"] ### you can see the optimization in according to multiple values, like "recall"
    best_scores={}
    best_estimators={}
    
    for score in scores :
        print("\n---- Tuning hyper-parameters for {:s} ----\n".format(score))
        clf = GridSearchCV(clf_model, parameters, scoring=score ,cv=cv_indexes, n_jobs=-1)
        clf.fit(X, Y)
        print("Best parameters set found on development set:")
        print()
        print(clf.best_params_)
        print(clf.best_score_)
        print()
        print("Grid scores on development set:")
        print()
        means = clf.cv_results_['mean_test_score']
        stds = clf.cv_results_['std_test_score']
        print("mean {}\tstd {}\tparameters".format(score, score))
        for mean, std, params in zip(means, stds, clf.cv_results_['params']):
            print("%.3f\t(std: %.3f)\t\t%r"
                  % (mean, std , params))
        print()
        print("Detailed classification report (based on the full set) :")
        print()
        y_true, y_pred = Y, clf.predict(X)
        print(classification_report(y_true, y_pred))
        print()
        best_scores[score]= clf.best_score_
        
        best_estimators[score] = clf.best_estimator_
        
    print("Best values: ")
    
    for score in scores :
        print("{} \t{}".format(score,best_scores[score]));
    
    return  best_estimators, scaler, classnames

def test_process(file_input, file_output, model_file, features_to_use):
    print("Prediction process \nParameters:\n\t input file\t {}\n\t output file\t {} \n\t model file\t {}".format(file_input, file_output, model_file))
    ofs = open(file_output, "w")
    ifs = open(model_file, "rb")
    scaler, clfs, classnames = pickle.load(ifs)
    ifs.close()
    print("Loaded model"+(  "" if len(clfs) == 1 else "s")+" based on "+ ", ".join(clfs.keys()))
    header = "PDB\tPocketNumber\tprob_" + "\tprob_".join(classnames) +"\tClass\n"
    X, sample_IDS = import_data(file_input, features_to_use, ['PDB', 'PocketNumber']) ## Note: labels is an empty list
    print("Transforming the input data")
    X= scaler.transform(X)
    print("Predicting and saving the results")
    for score in clfs:
        ofs.write("### Prediction from model based on {} \n".format(score))
        ofs.write(header)
        probs = clfs[score].predict_proba(X)
        for sample in range(0, sample_IDS.shape[0]):
            line="{:s}\t{:s}".format(sample_IDS[sample, 0],sample_IDS[sample, 1])
            for cl in range(0, probs.shape[1]):
                line+="\t{:.2f}".format(probs[sample, cl])
            line+="\t{}\n".format(classnames[np.argmax(probs[sample, ])])
            ofs.write(line)
    ofs.close()
    print("Done.\n")
    return


def main():
    features_to_use=['Pocket_Score','Drug_Score','Number_of_V._Vertices','Mean_alpha.sphere_radius','Mean_alpha.sphere_SA','Mean_B.factor','Hydrophobicity_Score','Polarity_Score','Volume_Score','Real_volume','Charge_Score','Local_hydrophobic_density_Score','Number_of_apolar_alpha_sphere','Proportion_of_apolar_alpha_sphere','SASA','AlphaHelix','Coil','Strand','Turn','Bridge','Helix310'];
    action = "help"
    if len(sys.argv) > 1:
        action = sys.argv[1]
    if action == "train":
        models=["mlp", "rf", "svm"]
        if len(sys.argv) < 6 or not (sys.argv[4] in models) :
            print("Usage: {} train input_file output_file model cv".format(sys.argv[0]) );
            print("Possible models:");
            print(models);
            exit(1)
        file_input= sys.argv[2]
        file_output= sys.argv[3]
        model=sys.argv[4]
        n_cross_validation=int(sys.argv[5])
        clfs , scaler , classnames = training_process(file_input, model, features_to_use, n_cross_validation)
        stream_out = open(file_output, "wb")
        pickle.dump([scaler, clfs, classnames], stream_out)
        stream_out.close();
    elif action == "test":
        if len(sys.argv) < 5:
            print("Usage: {} test input_file output_file model_file".format(sys.argv[0]) );
            exit(1)
        file_input= sys.argv[2]
        file_output= sys.argv[3]
        model_file=sys.argv[4]
        test_process(file_input, file_output, model_file, features_to_use)
    else:
        print("Usage: {} <train|test> [options]".format(sys.argv[0]) );
        exit(1)
    return 

if __name__ == "__main__":
    main();
