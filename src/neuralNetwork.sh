#!/usr/bin/env bash

############################
start() {
    echo "##########################################################"
    echo "#                                                        #"
    echo "#   Neural Network training, have a good run.            #"
    echo "#                                                        #"
    echo "##########################################################"
}

stop() {
	echo "Stoping $0"
	exit 1; #!/bin/bash

# Ben Viart  October 2019, PickPocket Neural network script
# This script helps users to train and test the data
# The input is a matrix of pockets with descriptive values computed by the pickPocket.sh script
# For more information see README file

}

#########################
# The command line help #
#########################
help() {

	echo "Usage: $0 -i training_file -d test_file -o output_file -m model_file -c [3-10] -t [mlp|rf|svm] [-a][-h]  /" >&2
	echo "program to train and predict protein pocket function

where:
	-i input_file   : Specify input file contains the training matrix, output of the pickPocket.sh step.
    -d test_file    : Test dataset, the results file will contain the pockets present in this file. Default : data/FullPDB_June_2019.tsv
	-o output_file  : Results file, contains the positives pockets as predicted by the model
    -m model_file   : Name of the file that will contain the model. If already exists, it will be used to test the given dataset. Default: model.out
	-c int          : Number of cross validation to  train the model ( 3 to 10, default 3 )
	-t [mlp|rf|svm] : Model type. Three type of model can be used : multilayer perceptron *mlp*, random forest *rf*' and  support vector machine *svm* ( default mlp )

	-a  : All output: the output will be the test file with the prediction and probabilities as last columns
	
	-h 	: Show this help text
"
    exit 1 ;
}

#################################
#Remove the temp files ?

#################################
#Default argument
modelType="mlp"
crossValidation=3
outputFile="PickPocketResults.tsv"
testDB="data/FullPDB_June_2019.tsv"
outputModel="model.out"
full_output="F"
MYDIR="$(dirname "$(readlink -f "$0")")"


# Parse the argument
while getopts "ab:c:d:D:e:f:g:hi:j:k:l:L:m:M:n:o:p:q:r:s:t:u:vx:y:z:w:" OPTION
do
    case $OPTION in
		h)
			help
			;;
		i)
			inputFile=$OPTARG
			;;
		o)
			outputFile=$OPTARG
			;;
		m)
			outputModel=$OPTARG
			;;
		c)
			crossValidation=$OPTARG
			;;
		t)
			modelType=$OPTARG
			;;
		d)
		    testDB=$OPTARG
		    ;;
		a)  
		    full_output="T"
		    ;;
		?)
			help
            ;;
    esac
done
# Catching no arguments
if [ $OPTIND -eq 1 ]; then help; fi

# Test for variable

### If the model exists, it goes to the prediction. 
# rm -f $ouputFile
# rm -f $outputModel
if [[ -f $ouputFile ]]; then
    echo "File ${outputFile} already exists. Moving it to ${ouputFile}.old "
    mv ${outputFile} ${outputFile}.old
fi

re='^[0-9]+$'
if ! [[ $crossValidation =~ $re ]] ; then
   echo "error: Cross validation is not a number" >&2; exit 1
fi

if (($crossValidation > 10 && $crossValidation < 3)); then
  echo "error: Unvalid cross validation number" >&2; exit 1
fi



badmodel=true
if [[  ${modelType} == *"mlp"* ]]; then
  badmodel=false
fi
if [[  ${modelType} == *"rf"* ]]; then
  badmodel=false
fi
if [[  ${modelType} == *"svm"* ]]; then
  badmodel=false
fi

if ${badmodel} ; then
     echo "error: Invalid model type " >&2; exit 1
fi

if [[ ! -f ${outputModel} ]]; then
    echo "Training the model "
    # Training the model
    echo "$MYDIR/main.py train $inputFile $outputModel $modelType $crossValidation"
    ${MYDIR}/main.py train $inputFile $outputModel $modelType $crossValidation

    echo -n "Is the model prediction good enough (y/n)? "
    read answer
    if [ "$answer" != "${answer#[Yy]}" ] ;then
        echo "Let's compute the results then..."
    else
        echo "Let's stop then, try other model type or different cross validation."
        stop
    fi
else
    echo "Model $outputModel already exists, I'll use it for the test! "
fi

if [[ ! -f $testDB ]]; then
  echo "error: file $testDB doesn't exists. The model won't be tested but it's available at $outputModel" >&2; exit 1   
fi


# Test the model on a given dataset

echo "${MYDIR}/main.py test $testDB $outputFile $outputModel"
${MYDIR}/main.py test $testDB $outputFile $outputModel

if [[ "${full_output}" == "T" ]]; then
    echo "Full output creation"
    if [[ $(grep -c "^#"  $outputFile ) -eq 1 ]]; then
        awk -v fname="$outputFile" '
            BEGIN {FS="\t"; OFS="\t" ; getline line < fname } 
            {
                getline line < fname; 
                n=split(line, arr, "\t"); 
                toprint=$0
                for (i=3; i <= n ; i++ ) {
                  if ( arr[i] ~ /^[0-9.]+$/ ) {
                     toprint=toprint "\t" arr[i] 
                  } else {
                      toprint=toprint  "\t\"" arr[i] "\""
                  }

                }
                print toprint
            }' $testDB > ${outputFile}.tmp
        mv $outputFile.tmp $outputFile
    else
        echo "Sorry but the complete output is not available for multiple models."
    fi

fi

echo "End of script. Results can be found in $outputFile "




