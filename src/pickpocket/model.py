import warnings
import numpy as np
import pandas as pd
import pickle
import sys
import json
import matplotlib.pyplot as plt

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
from sklearn.metrics.classification import accuracy_score
from sklearn.model_selection import cross_val_predict
from sklearn.metrics import roc_auc_score
from sklearn.metrics import plot_roc_curve
from sklearn.metrics import auc


from pickpocket.utils import pickpocket_header, fpocket_default_param, PDBKFold, import_data

np.random.seed(123)



def training_process(file_name, model, out_prefix, cv, f1_thr, f2_thr, condition, threads):
    
    data= import_data(file_name,  f1_thr, f2_thr, condition )
    X = data["X"]
    Y= np.array(data["Y"])
    
    print("Training process")
    print ( "Options:\n\t File name: {:s}\n\t Model: {:s}\n\t Cross Validation: {}\n".format(file_name, model, cv))
    print("Total dataset size: ")
    print("\t- {:d} pockets".format(X.shape[0]))
    print("\t- {:d} features".format(X.shape[1]))
    classnames=["Negative", "Positive"]
    groupcount = [len(Y)-sum(Y), sum(Y)]
    print("\t- classes : " + (" ".join("{} ({} pockets)".format(classnames[k], groupcount[k]) for k in range(0, len(classnames))) ))
    
    print("\nRescaling the data in [0-1]")
    scaler= MinMaxScaler(feature_range=(0,1))
    X = scaler.fit_transform(X, Y)
    indexes=PDBKFold(data["ids"], Y, cv)
    print("\nFor cross validation, splited in {} partitions:\n{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}".format(cv, "Group", "train-" , "train+", "test-", "test+", "tot-", "tot+", "tot", "tot train", "tot test"))
    for gn, grp in enumerate(indexes):
        n_test, n_train=[0,0], [0,0]
        for i in grp[0]:
            n_train[Y[i]]+=1
        for i in grp[1]:
            n_test[Y[i]]+=1
        print("{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}\t{:^10}".format(gn,n_train[0], n_train[1], n_test[0], n_test[1], n_train[0]+ n_test[0], n_train[1]+ n_test[1], sum(n_train)+ sum(n_test), n_train[0]+n_train[1], n_test[0]+n_test[1] ))
    print("\n\n")
    if (model == "mlp"):
        print("Neural network - MultiLayer Perceptron Classifier")
        parameters = {'activation':['logistic', 'relu'], 'solver' : ['adam'] , 
                      'hidden_layer_sizes' : [ (64,), (32,16,8) , (16,8,4,2) ] }
        clf_model=MLPClassifier(max_iter=100000, alpha=0.01)
    elif (model == "rf"):
        print("Random Forest classifier")
        parameters = {'n_estimators':(100,), 'max_depth' : (10,50) , 'min_samples_split' : (0.1,0.05, 2) }
        clf_model=RandomForestClassifier(class_weight = {0:1, 1:1}, criterion='gini' )
    elif (model == "svm"):
        print("Support Vector Machine classifier")
        parameters = {'C': [1, 10, 100], 'kernel' : ['rbf', 'linear' , 'poly', 'sigmoid'], 'gamma' : ['auto'] }
        clf_model=SVC(probability=True)
    
    scores = {'Recall' : 'recall' , 'Accuracy' : "accuracy" , "AUC": "roc_auc"} 
    print("\n---- Tuning hyper-parameters ----\n")
    clf = GridSearchCV(clf_model, parameters, scoring=scores ,cv=indexes, n_jobs=threads, refit='Recall')
    with warnings.catch_warnings(record=True) as w:
        warnings.simplefilter("always")
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
    cv_results = cross_validate(clone(clf.best_estimator_), X, Y, cv=indexes,scoring = scores  )
    print("Cross validation results:")
    for k in scores.keys():
        print("Score {:30}\t {:.3f} +- {:.3f} ".format(k , np.mean(cv_results["test_{}".format(k)]), np.std(cv_results["test_{}".format(k)]) ))
    print()
    clf=clone(clf.best_estimator_)
    ### Save the result
    clf.fit(X, Y)
    stream_out = open("{}.pkl".format(out_prefix), "wb")
    pickle.dump([scaler, clf, data["param"]], stream_out)
    stream_out.close();            
    ### Produce ROC graph
    tprs = []
    aucs = []
    mean_fpr = np.linspace(0, 1, 100)
    fig, ax = plt.subplots()
    confusion_m=[[[],[]],[[],[]]]
    for i, (train, test) in enumerate(indexes):
        clf=clone(clf)
        clf.fit(X[train], Y[train])
        viz = plot_roc_curve(clf, X[test], Y[test],
                         name='ROC fold {}'.format(i),
                         alpha=0.3, lw=1, ax=ax)
        interp_tpr = np.interp(mean_fpr, viz.fpr, viz.tpr)
        interp_tpr[0] = 0.0
        tprs.append(interp_tpr)
        aucs.append(viz.roc_auc)
        y_pred=clf.predict(X[test])
        cm= confusion_matrix(Y[test], y_pred)
        confusion_m[0][0].append(cm[0][0])
        confusion_m[0][1].append(cm[0][1])
        confusion_m[1][0].append(cm[1][0])
        confusion_m[1][1].append(cm[1][1])
        print("Confusion matrix CV {} ".format(i+1))
        print(cm)
    
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
    print("{:5}{:^10}{:^10}{:^10}".format("", "F", "T", "tot"))
    print("{:5}{:^10}{:^10}{:^10}".format("F", sum(confusion_m[0][0]), sum(confusion_m[0][1]),  sum(confusion_m[0][0])+ sum(confusion_m[0][1]) ))
    print("{:5}{:^10}{:^10}{:^10}".format("T", sum(confusion_m[1][0]), sum(confusion_m[1][1]),  sum(confusion_m[1][0])+ sum(confusion_m[1][1])))
    print("{:5}{:^10}{:^10}{:^10}".format("tot", sum(confusion_m[1][0])+sum(confusion_m[0][0]), sum(confusion_m[0][1])+sum(confusion_m[1][1]), ""))
    print()
    if 'feature_importances_' in dir(clf):
        with open("{}_feature_importances.tsv".format(out_prefix), "w") as f:
            f.write("Feature\tImportance\n")
            for idx,imp in enumerate(clf.feature_importances_):
                f.write("{}\t{}\n".format(pickpocket_header[idx+5], imp ))
    
    return 

def test_process(file_input, file_output, model_file, f1_thr, f2_thr, condition):
    print("Prediction process \nParameters:\n\t input file\t {}\n\t output file\t {} \n\t model file\t {}".format(file_input, file_output, model_file))
    
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
    print("Loaded model {}".format(clf.__class__.__name__))
    classnames=["Negative", "Positive"]
    data= import_data(file_name,  f1_thr, f2_thr, condition )
    X=data["X"]
    Y=data["Y"]
    if data["param"] != model_fpocket_param:
        print("WARNING! You are trying to test on data generated with different fpocket parameters respect to the model's.")
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
    ofs = open(file_output, "w")
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
