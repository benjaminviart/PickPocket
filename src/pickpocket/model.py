
from sklearn.preprocessing import MinMaxScaler
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import cross_validate
from sklearn.model_selection import KFold
from sklearn.svm import SVC
from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
from sklearn.base import clone

import numpy as np
import pandas as pd
import pickle
import sys
from sklearn.metrics.classification import accuracy_score


np.random.seed(123)


def generate_train_test_idx(self, groups, nbtest, nbtrain):
    train_idx = np.empty((0,), dtype='int')
    test_idx = np.empty((0,), dtype='int')
    classnames = np.unique(groups)
    for g in range(0, classnames.size):
        random_indices = np.random.permutation(np.arange(len(groups))[groups==g])
        train_idx = np.concatenate((train_idx, random_indices[nbtest:]))
        test_idx = np.concatenate((test_idx, random_indices[nbtest:nbtrain]))
    return (train_idx, test_idx);

def import_data(self, file_name):
    features_to_use=['Pocket_Score','Drug_Score','Number_of_V._Vertices','Mean_alpha.sphere_radius','Mean_alpha.sphere_SA','Mean_B.factor','Hydrophobicity_Score','Polarity_Score','Volume_Score','Real_volume','Charge_Score','Local_hydrophobic_density_Score','Number_of_apolar_alpha_sphere','Proportion_of_apolar_alpha_sphere','SASA','AlphaHelix','Coil','Strand','Turn','Bridge','Helix310'];
    table = pd.read_csv(file_name, decimal=".", sep='\t')
    labels=[]
    ids =[]
    ids_col = ['PDB', 'PocketNumber'];
    label_col = ['ligandClass' ,'correctPocket'] ;
    mask = []
    for lab in label_col:
        mask = table.columns.str.contains(lab)
        if any(mask):
            if len(labels) == 0:
                labels = np.transpose(np.array([table[lab]], dtype="str"));
            else:
                tmp=np.transpose(np.array([table[lab]], dtype="str"));
                labels = np.concatenate((labels, tmp), 1)
    for lab in ids_col:
        mask = table.columns.str.contains(lab)
        if any(mask):
            if len(ids) == 0:
                ids = np.transpose(np.array([table[lab]], dtype="str"));
            else :
                tmp=np.transpose(np.array([table[lab]], dtype="str"));
                ids = np.concatenate((ids, tmp), 1)
    X= np.array(table[features_to_use], dtype="float64")
    return X, labels , ids


def training_process(self, file_name, model, cv, threads):
    
    X, labels, ids = self.import_data(file_name )
    
    if len(labels.shape) == 2 and labels.shape[1] > 1:
        labels=labels[:,0] 
    classnames, Y = np.unique(labels, return_inverse=True)
    groupcount = np.bincount(Y)
    print("Training process")
    print ( "Options:\n\t File name: {:s}\n\t Model: {:s}\n\t Cross Validation: {}\n".format(file_name, model, cv))
    print("Total dataset size: ")
    print("\t- {:d} samples".format(X.shape[0]))
    print("\t- {:d} features".format(X.shape[1]))
    print("\t- {:d} classes : ".format(len(classnames)) + (" ".join("{} ({} samples)".format(classnames[k], groupcount[k]) for k in range(0, len(classnames))) ))
    
    print("\nRescaling the data in [0-1]")
    scaler= MinMaxScaler(feature_range=(0,1))
    X = scaler.fit_transform(X, Y)
    
    
    if (model == "mlp"):
        print("Neural network - MultiLayer Perceptron Classifier")
        parameters = {'activation':['relu', 'tanh'], 'solver' : ['adam', 'sgd'] , 
                      'hidden_layer_sizes' : [ (25,15,5), (50,25), (15,10) ] , 'alpha' : [0.0001, 0.05], 'max_iter' : (1000,) }
        clf_model=MLPClassifier()
    elif (model == "rf"):
        print("Random Forest classifier")
        parameters = {'n_estimators':(100,200), 'criterion' : ('gini',) , 'max_depth' : (5,10) , 'min_samples_split' : (2,5,.10,) }
        clf_model=RandomForestClassifier(class_weight = "balanced_subsample")
    elif (model == "svm"):
        print("Support Vector Machine classifier")
        parameters = {'C': [1, 10, 100, 1000], 'kernel' : ['rbf', 'linear' , 'poly', 'sigmoid'], 'gamma' : ['auto'] }
        clf_model=SVC(probability=True)
        
    scores = {'Precision' : 'precision' , 'Accuracy' : "accuracy" } 
    
    print("\n---- Tuning hyper-parameters for ----\n")
    clf = GridSearchCV(clf_model, parameters, scoring=scores ,cv=KFold(n_splits=cv, shuffle=True), n_jobs=threads, refit='Precision')
    clf.fit(X, Y)
    print("Best parameters set found on development set:")
    print()
    print(clf.best_params_)
    print(clf.best_score_)
    print()
    print("Grid scores on development set:")
    print()
    for k in scores.keys():
        print("mean_{}\t".format(k), end="")
    print("parameters")
    for i in range(0, len(clf.cv_results_['params']) ):
        for k in scores.keys():
            print(clf.cv_results_['mean_test_{}'.format(k)][i], end="\t")
        print(clf.cv_results_['params'][i])
    print()
    cv_results = cross_validate(clone(clf.best_estimator_), X, Y, cv=KFold(n_splits=cv, shuffle=True),scoring = scores  )
    print("Cross validation results:")
    for k in scores.keys():
        print("Score {}:\t {:.3f} +- {:.3f} ".format(k , np.mean(cv_results["test_{}".format(k)]), np.std(cv_results["test_{}".format(k)]) ))
    print("\n\nDetailed classification report (based on the full set, not cross validated) :")
    print()
    y_true, y_pred = Y, clf.predict(X)
    print(classification_report(y_true, y_pred))
    print()
    return  clf.best_estimator_, scaler, classnames

def test_process(self, file_input, file_output, model_file):
    print("Prediction process \nParameters:\n\t input file\t {}\n\t output file\t {} \n\t model file\t {}".format(file_input, file_output, model_file))
    ofs = open(file_output, "w")
    try :
        ifs = open(model_file, "rb")
        scaler, clf, classnames = pickle.load(ifs)
        ifs.close()
    except:
        try:
            ifs = open(model_file, "rb")
            scaler, clf, classnames = pickle.load(ifs, encoding='latin1')
            ifs.close()
        except:
            print("Erro loading the model file.")
    print("Loaded model {}".format(clf.__class__.__name__))
    classnames=[str(elem) for elem in classnames]
    X, labels, sample_IDS = self.import_data(file_input ) ## Note: labels is an empty list
    if len(labels) > 0 and len(labels.shape) == 2 and labels.shape[1] > 1:
        tmp=labels[:,0]
        labels=[]
        for e in tmp:
            labels.append(classnames.index(e))
    header = "PDB\tPocketNumber\tprob_" + "\tprob_".join(classnames) +"\tClass"
    if len(labels) > 0:
        header+="\tLabel"
    header+="\n";
    print("Transforming the input data")
    X= scaler.transform(X)
    print("Predicting and saving the results")
    ofs.write(header)
    probs = clf.predict_proba(X)
    for sample in range(0, sample_IDS.shape[0]):
        line="{:s}\t{:s}".format(sample_IDS[sample, 0],sample_IDS[sample, 1])
        for cl in range(0, probs.shape[1]):
            line+="\t{:.2f}".format(probs[sample, cl])
        line+="\t{}".format(classnames[np.argmax(probs[sample, ])])
        if len(labels) > 0:
            line+="\t{}".format(labels[sample])
        line+="\n"
        ofs.write(line)
    ofs.close()
    if len(labels) > 0:
        y_true, y_pred = labels, clf.predict(X)
        print(confusion_matrix(y_true, y_pred))
        print(classification_report(y_true, y_pred))
        print("Accuracy: {:.3f}".format(accuracy_score(y_true, y_pred)))
    print("Done.\n")
