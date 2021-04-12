#!/usr/bin/env bash

# Ben Viart May 2020, Small program to compute the full PDB descriptive matrix


############################
start() {
	echo "Starting $0" ;
}

stop() {
	echo "Stoping $0"
	exit 1; #!/bin/bash

}

#########################
# The command line help #
#########################
help() {
	echo "Usage: $0 -i input_file -o output " >&2
	echo "program to compute descriptive matrix of all PDB
where:
	-h 	: show this help text
	-i 	: Input file containing all the PDB_ID you want to compute
	-o 	: Ouput folder, should end with / 
"
exit 1 ;
}


tmpFile="tmp"
tmpFile2="tmp2"
#################################
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
			outputFolder=$OPTARG
			;;
		?)
			help
            ;;
    esac
done
# Catching no arguments
if [ $OPTIND -eq 1 ]; then help; fi

################################# TEST ##########################################


if [ ! -e ${inputFile} ]
then
    echo "Error: The file ${inputFile} does not exist" 1>&2
    help
fi

# Remove the old temp file
rm -r $outputFolder
# Remove the old outputfile

mkdir -p ${outputFolder}
touch ${outputFolder}fullPDB_pocketSummary.csv
echo "PDB PocketNumber PocketPosition Pocket_Score Drug_Score Number_of_V._Vertices Mean_alpha-sphere_radius Mean_alpha-sphere_SA Mean_B-factor Hydrophobicity_Score Polarity_Score Volume_Score Real_volume Charge_Score Local_hydrophobic_density_Score Number_of_apolar_alpha_sphere Proportion_of_apolar_alpha_sphere SASA AlphaHelix Coil Strand Turn Bridge Helix310" > ${outputFolder}fullPDB_pocketSummary.csv
mkdir -p ${outputFolder}chunk


#Splitting the file
split -l 500 ${inputFile} inputChunk
mv inputChunk* ${outputFolder}chunk/
#ls ${outputFolder}chunk/*
for file in $(ls ${outputFolder}chunk/inputChunk*) ;do
	echo "Treating " $file
	singularity exec docker://cloxd/pickpocket:test /home/bviart/bin/PickPocket/src/pickPocket.sh          -i $file -l data/Fatty_Acid_input/ligand_codeFA -o OUT/ -t false -p PDB/ -R  true -v

	# get the matrix file 
	tail -n +2 ./OUT/pocketSummary.csv >> ${outputFolder}fullPDB_pocketSummary.csv


done



