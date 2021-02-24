import warnings
import numpy as np
import pandas as pd
import pickle
import sys
import json
import matplotlib.pyplot as plt
import os 
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 
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
from sklearn.decomposition import PCA
from sklearn.metrics import accuracy_score, recall_score
from sklearn.model_selection import cross_val_predict
from sklearn.metrics import roc_auc_score
from sklearn.metrics import plot_roc_curve
from sklearn.metrics import auc
from pickpocket.utils import pickpocket_header, fpocket_default_param, PDBKFold, import_data
from sklearn.utils import class_weight
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Dropout
from tensorflow.keras.metrics import Recall, AUC, FalseNegatives
from tensorflow.keras.regularizers import l1_l2
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.wrappers.scikit_learn import KerasClassifier
from tensorflow.config import threading as tft
from tensorflow.keras.models import load_model
np.random.seed(123)

classnames=["Negative", "Positive"]

def keras_model(optimizer, loss,  activation='relu'):
        model = Sequential()
        model.add(Dense(500, input_dim=len(pickpocket_header)-5, activation=activation))
        model.add(Dropout(rate=0.2))
        model.add(Dense(50, activation=activation))
        model.add(Dense(1, activation="sigmoid"))
        model.compile(loss=loss, optimizer=optimizer, metrics=["accuracy"])
        return model

def training_process(file_name, model, labels, out_prefix, cv, f1_thr, f2_thr, condition, threads):
    
    data= import_data(file_name,  f1_thr, f2_thr, condition )
    X = data["X"]
    Y= np.array(data["Y"])
    if labels != None:
        Y_new=[None for _ in range(len(Y))]
        with open(labels, "r") as f:
            for line in f:
                if line[0]!="#":
                    arr=line.split("\t")
                    try:
                        idx=data["ids"].index([arr[0], arr[1]])
                        Y_new[idx]=int(arr[2])
                    except ValueError:
                        print("\nError! file {} contains a pocket absent in {}: {} {}\n".format(labels, file_name, arr[0], arr[1]))
                        sys.exit(1)
        for i, lab in enumerate(Y_new):
            if lab == None:
                print("Error! file {} doesn't contains the pocket {} {} present in {}".format(labels, data["ids"][i][0], data["ids"][i][1], file_name))
                sys.exit(1)
        Y=Y_new.copy()
#        for i, lab in enumerate(Y_new):
#            if Y_new[i] == 1:
#                Y[i]=1
#            else:
#                if Y[i] == 1:
#                    Y[i]=0
    Y_new = []
    X_new = []
    ids=[]
    for i in range(len(Y)):
#        if Y[i]!=0:
            X_new.append(X[i])
            Y_new.append(1 if Y[i] == 1 else 0)
#            Y_new.append(0 if Y[i] == -1 else 1)
            ids.append(data["ids"][i])
    X=np.array(X_new)
    Y=np.array(Y_new)
    
    
    print("Training process")
    print ( "Options:\n\t File name: {:s}\n\t Model: {:s}\n\t Cross Validation: {}\n".format(file_name, model, cv))
    print("Total dataset size: ")
    print("\t- {:d} pockets".format(X.shape[0]))
    print("\t- {:d} features".format(X.shape[1]))
    groupcount = [len(Y)-sum(Y), sum(Y)]
    print("\t- classes : " + (" ".join("{} ({} pockets)".format(classnames[k], groupcount[k]) for k in range(0, len(classnames))) ))
    
    print("\nRescaling the data in [0-1]")
    scaler= MinMaxScaler()
    X = scaler.fit_transform(X)
    pca= PCA(n_components=10)
    X= pca.fit_transform(X)
    indexes=PDBKFold(ids, Y, cv, seed=123)
    print("\nFor cross validation, splited in {} partitions:\n{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}".format(cv, "Group", "train-" , "train+", "test-", "test+", "tot-", "tot+", "tot", "tot train", "tot test"))
    for gn, grp in enumerate(indexes):
        n_test, n_train=[0,0], [0,0]
        for i in grp[0]:
            n_train[Y[i]]+=1
        for i in grp[1]:
            n_test[Y[i]]+=1
        print("{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}".format(gn,n_train[0], n_train[1], n_test[0], n_test[1], n_train[0]+ n_test[0], n_train[1]+ n_test[1], sum(n_train)+ sum(n_test), n_train[0]+n_train[1], n_test[0]+n_test[1] ))
    print("\n\n")
    n_pos=sum(Y)
    n_neg=len(Y)-n_pos
    class_weight={0:len(Y)/n_neg,1: len(Y)/n_pos }
    print(class_weight)
    if (model == "mlp"):
        print("Neural network - MultiLayer Perceptron Classifier")
        parameters = {'activation':[ 'relu'], 'solver' : ['adam'] , 'alpha' : [0.0001, 0.0000001],
                      'hidden_layer_sizes' : [  (500,) , (500,50) ,(500,50,5)] }
        clf_model=MLPClassifier(max_iter=100000,early_stopping=True)
    elif (model == "rf"):
        print("Random Forest classifier")
        parameters = {'n_estimators':[ 1000  ], 'max_depth' : [10] , 'min_samples_split' : [0.05] }
        clf_model=RandomForestClassifier(class_weight = class_weight, criterion='gini')
    elif (model == "svm"):
        print("Support Vector Machine classifier")
        parameters = {'C': [1, 10, 100], 'kernel' : ['rbf', 'linear' , 'poly', 'sigmoid'], 'gamma' : ['auto'] }
        clf_model=SVC(probability=True)
    elif (model =="deep"):
        print("Keras deep NN")
        tft.set_intra_op_parallelism_threads(1)
        tft.set_inter_op_parallelism_threads(threads)
        clf_model=KerasClassifier(build_fn=keras_model, verbose=0)
        parameters={'optimizer' : ['adam'],
                    'loss' : ['binary_crossentropy'],
                    'activation' : ['relu'],
                    'batch_size' : [10], 'epochs' : [500],  }
        threads=1
    scores = {'Recall' : 'recall' , 'Accuracy' : "accuracy" , "AUC": "roc_auc"} 
    print("\n---- Tuning hyper-parameters ----\n")
    clf = GridSearchCV(clf_model, parameters, scoring=scores ,cv=indexes, n_jobs=threads, refit='Recall')
    with warnings.catch_warnings(record=True) as w:
        warnings.simplefilter("always")
        if model=="deep":
            clf.fit(X, Y, class_weight=class_weight)
        else:
            clf.fit(X, Y)
    print()
    print("Grid scores on development set:")
    print()
    for k in scores.keys():
        print("{:^30}".format(k), end="")
    print("{:^30}".format("parameters"))
    for i in range(0, len(clf.cv_results_['params']) ):
        for k in scores.keys():
            print("{:^30.3f}".format(clf.cv_results_['mean_test_{}'.format(k)][i]), end="\t")
        print(clf.cv_results_['params'][i])
    print()
    print("Best parameters set found on development set:")
    print("Parameters: {}".format(clf.best_params_))
    print()
    clf=clone(clf.best_estimator_)
    ### Save the result
    if model=="deep":
        clf.fit(X, Y, class_weight=class_weight)
    else:
        clf.fit(X, Y)
    if 'feature_importances_' in dir(clf):
        fi = sorted( enumerate(clf.feature_importances_),  key=lambda tup : tup[1],reverse=True)
        with open("{}_fi.tsv".format(out_prefix) , "w") as ofs:
            ofs.write("feature\timportance\n")
            for f in fi:
                ofs.write("{}\t{:.3f}\n".format(pickpocket_header[5+f[0]], f[1]))
        
        
    stream_out = open("{}.pkl".format(out_prefix), "wb")
    if model == "deep":
        pickle.dump([scaler, "deep", data["param"]], stream_out)
        clf.model.save("{}.h5".format(out_prefix))
    else:
        pickle.dump([scaler, clf, data["param"]], stream_out)
    stream_out.close();            
    ### Produce ROC graph in CV
    print("Producing the models for each CV")
    tprs = []
    aucs = []
    mean_fpr = np.linspace(0, 1, 100)
    fig, ax = plt.subplots()
    confusion_m=[[0,0],[0,0]]
    ofs= open("{}.cv_prediction.tsv".format(out_prefix), "w")
    ofs.write("PDB\tPocket\tProba\tPrediction\tTrueClass\n")
    for i, (train, test) in enumerate(indexes):
        out_dir="{}_CV/{}/".format(out_prefix, i)
        os.makedirs(out_dir, exist_ok=True)
        with open("{}/train.tsv".format(out_dir),"w") as ofs_train:
            with open("{}/test.tsv".format(out_dir),"w") as ofs_test:
                with open(file_name, "r") as ifs:
                    idx=0;
                    line=ifs.readline()
                    if line[0]=="#":
                        ofs_train.write(line)
                        ofs_test.write(line)
                        line=ifs.readline()
                    ofs_train.write(line)
                    ofs_test.write(line)
                    line=ifs.readline()
                    while line:
                        if idx in train:
                            ofs_train.write(line)
                        else:
                            ofs_test.write(line)
                        idx+=1
                        line=ifs.readline()
        clf=clone(clf)
        if model=="deep":
            clf.fit(X[train], Y[train], class_weight=class_weight)
        else:
            clf.fit(X[train], Y[train])
        clf._estimator_type="classifier"
        stream_out = open("{}/model.pkl".format(out_dir), "wb")
        if model == "deep":
            pickle.dump([scaler, "deep", data["param"]], stream_out)
            clf.model.save("{}/model.h5".format(out_dir))
        else:
            pickle.dump([scaler, clf, data["param"]], stream_out)
        stream_out.close();
        viz = plot_roc_curve(clf, X[test], Y[test],
                         name='ROC fold {}'.format(i),
                         alpha=0.3, lw=1, ax=ax)
        interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
        interp_tpr[0] = 0.0
        tprs.append(interp_tpr)
        aucs.append(viz.roc_auc)
        y_pred=clf.predict(X[test])
        y_prob=clf.predict_proba(X[test])
        for i, idx in enumerate(test):
            ofs.write("{}\t{}\t{}\t{}\t{}\n".format(ids[idx][0],ids[idx][1],y_prob[i][1] ,y_pred[i], Y[idx] ))
        cm= confusion_matrix(Y[test], y_pred)
        confusion_m[0][0]+=cm[0][0]
        confusion_m[0][1]+=cm[0][1]
        confusion_m[1][0]+=cm[1][0]
        confusion_m[1][1]+=cm[1][1]
    
    ax.plot([0, 1], [0, 1], linestyle='--', lw=2, color='r',
        label='Chance', alpha=.8)
    mean_tpr = np.mean(tprs, axis=0)
    mean_tpr[-1] = 1.0
    mean_auc = auc(mean_fpr, mean_tpr)
    std_auc = np.std(aucs)
    ax.plot(mean_fpr, mean_tpr, color='b',
        label=r'Mean ROC (AUC = %0.2f $\pm$ %0.2f)' % (mean_auc, std_auc),
        lw=2, alpha=.8)
    std_tpr = np.std(tprs, axis=0)
    tprs_upper = np.minimum(mean_tpr + std_tpr, 1)
    tprs_lower = np.maximum(mean_tpr - std_tpr, 0)
    ax.fill_between(mean_fpr, tprs_lower, tprs_upper, color='grey', alpha=.2,
                label=r'$\pm$ 1 std. dev.')
    ax.set(xlim=[-0.05, 1.05], ylim=[-0.05, 1.05],
       title="Receiver operating characteristic example")
    ax.legend(loc="lower right")
    plt.savefig("{}_roc_auc.pdf".format(out_prefix))
    print("\nGlobal CV confusion matrix")
    print_cm(confusion_m)
    print()
    return 

def print_cm(confusion_m):
    print()
    print("{:5}{:^10}{:^10}{:^10}".format("", "F", "T", "tot"))
    print("{:5}{:^10}{:^10}{:^10}".format("F", confusion_m[0][0], confusion_m[0][1],  confusion_m[0][0]+ confusion_m[0][1] ))
    print("{:5}{:^10}{:^10}{:^10}".format("T", confusion_m[1][0], confusion_m[1][1],  confusion_m[1][0]+ confusion_m[1][1]))
    print("{:5}{:^10}{:^10}{:^10}".format("tot", confusion_m[1][0]+confusion_m[0][0], confusion_m[0][1]+confusion_m[1][1], ""))
    print()

def import_model(model_file):
    try :
        ifs = open(model_file, "rb")
        scaler, clf, model_fpocket_param = pickle.load(ifs)
        ifs.close()
    except:
        try:
            ifs = open(model_file, "rb")
            scaler, clf, model_fpocket_param = pickle.load(ifs, encoding='latin1')
            ifs.close()
        except:
            print("Erro loading the model file.")
    if clf == "deep":
        clf=KerasClassifier(build_fn=keras_model, verbose=0)
        clf.model=load_model(model_file.replace(".pkl", ".h5"))
        clf.classes_=[0,1]
    print("Loaded model {}".format(clf.__class__.__name__))
    return scaler, clf, model_fpocket_param

def predict(file_input, output_prefix, model ):
    scaler, clf, model_fpocket_param = import_model(model)
    
    return

def test_process(file_input, file_output, model_file, f1_thr, f2_thr, condition, labels):
    print("Prediction process \nParameters:\n\t input file\t {}\n\t output file\t {} \n\t model file\t {}".format(file_input, file_output, model_file))
    scaler, clf, model_fpocket_param = import_model(model_file)
    data= import_data(file_input,  f1_thr, f2_thr, condition )
    X=data["X"]
    Y= np.array(data["Y"])
    if labels != None:
        Y_new=[None for _ in range(len(Y))]
        with open(labels, "r") as f:
            for line in f:
                if line[0]!="#":
                    arr=line.split("\t")
                    try:
                        idx=data["ids"].index([arr[0], arr[1]])
                        Y_new[idx]=int(arr[2])
                    except ValueError:
                        print("\nWarning! file {} contains a pocket absent in {}: {} {}\n".format(labels, file_input, arr[0], arr[1]))
        for i, lab in enumerate(Y_new):
            if lab == None:
                print("Error! file {} doesn't contains the pocket {} {} present in {}".format(labels, data["ids"][i][0], data["ids"][i][1], file_input))
                sys.exit(1)
        Y=np.array(Y_new) 
    if data["param"] != model_fpocket_param:
        print("WARNING! You are trying to test on data generated with different fpocket parameters respect to the model's.")
    header = "PDB\tPocketNumber\tprob_" + "\tprob_".join(classnames) +"\tClass"
    header+="\n";
    print("Transforming the input data")
    X= scaler.transform(X)
    print("Predicting and saving the results")
    ofs = open(file_output, "w")
    ofs.write(header)
    probs = clf.predict_proba(X)
    ids=data["ids"]
    y_pred=[]
    for sample in range(0, len(ids) ):
        line="{:s}\t{:s}".format(ids[sample][0], ids[sample][1])
        for cl in range(0, probs.shape[1]):
            line+="\t{:.2f}".format(probs[sample, cl])
        y_pred.append(np.argmax(probs[sample, ]))
        line+="\t{}".format(classnames[np.argmax(probs[sample, ])])
        if len(Y) > 0:
            line+="\t{}".format(Y[sample])
        line+="\n"
        ofs.write(line)
    ofs.close()
    if len(Y) > 0:
        print_cm(confusion_matrix(Y, y_pred))
        print(classification_report(Y, y_pred))
        print("Accuracy: {:.3f}".format(accuracy_score(Y, y_pred)))
    print("Done.\n")
