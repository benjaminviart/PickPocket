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

	echo "Usage: $0 -i input_file -o output_file -m output_model -c cross_validation -t model_type -s score_cutoff/" >&2
	echo "program to train and predict protein pocket function

where:
	-h 	: show this help text
	-i 	: Specify input file contains the training matrix, output of the pickPocket.sh step.
	-o	: Results file, contains the positives pockets as predicted by the model with a score above the score_cutoff
	-c 	: Nomber of cross validation to  train the model ( 3 to 10, default 3 )
	-t  : Model type. Three type of model can be comuted : multilayer perceptron *mlp*, random forest *rf*' and  support vector machine *svm* ( default mlp)
	-m  : Model name to be stored, default *model.out*
	-s  : Score cutoff. Cutoff for the prediction (0.1 to 1, default .9 )
"
    exit 1 ;
}

#################################
#Remove the temp files ?

#################################
#Default argument
modelType="mlp"
crossValidation=3
scoreCutoff=0.9
outputFile="PickPocketResults.tsv"
outputModel="model.out"
MYDIR="$(dirname "$(readlink -f "$0")")"
# Parse the argument
while getopts "a:b:c:d:D:e:f:g:hi:j:k:l:L:m:M:n:o:p:q:r:s:t:u:vx:y:z:w:" OPTION
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
		s)
			scoreCutoff=$OPTARG
			;;
		?)
			help
            ;;
    esac
done
# Catching no arguments
if [ $OPTIND -eq 1 ]; then help; fi

# Test for variable
rm -f $ouputFile
rm -f $outputModel


re='^[0-9]+$'
if ! [[ $crossValidation =~ $re ]] ; then
   echo "error: Cross validation is not a number" >&2; exit 1
fi
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $scoreCutoff =~ $re ]] ; then
   echo "error: Score cutoff is not a number" >&2; exit 1
fi

if (($crossValidation > 10 && $crossValidation < 3)); then
  echo "error: Unvalid cross validation number" >&2; exit 1
fi

if (($scoreCutoff > 1 && $scoreCutoff < 0)); then
  echo "error: Unvalid score cutoff value" >&2; exit 1
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

# Full pdb parsing and results sorting
echo "${MYDIR}/main.py test data/FullPDB_June_2019.tsv results_tmp $outputModel"
${MYDIR}/main.py test data/FullPDB_June_2019.tsv results_tmp $outputModel

# Selecting the results

awk '$3>$scoreCutoff {print $1 "\t"  $2 "\t" $3 }' results_tmp > $outputFile

rm -f results_tmp

echo "End of script. Results can be found in $outputFile "
