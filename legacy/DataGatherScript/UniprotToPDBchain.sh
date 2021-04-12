#!/usr/bin/env bash

# Ben Viart January 2019, Small program to extract the pdb id and chain from a uniprot.



############################
start() {
	echo "Starting $0" ;
}

stop() {
	echo "Stoping $0"
	exit 1; #!/bin/bash

# Ben Viart January 2019, Small program to train and predict a specific pocket type based on ligands.

}

#########################
# The command line help #
#########################
help() {
	echo "Usage: $0 -i input_file -o output " >&2
	echo "program to train and predict protein pocket function
where:
	-h 	: show this help text
	-i 	: Specify input file contains the list of desired uniprot references to download.
	-o 	: Ouput file
"
exit 1 ;
}


tmpFile="tmp"
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
			outputFile=$OPTARG
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

rm -f $tmpFile
# Remove the old temp file
rm -f $outputFile
# Remove the old outputfile

touch $outputFile
echo "PDB;CHAIN;UNIPROT"
## LOOOP
while read line; do

    echo "Treating $line "
    # write header information to the log file

    # retrieve the web page using curl. time the process with the time command.
    curl "http://www.bioinf.org.uk/cgi-bin/pdbsws/query.pl?plain=1&qtype=ac&id=$line"  > $tmpFile

    # extract the first result
    head=$(cat $tmpFile  | tr -d '\n')
    #echo "head = " $head
    #echo $head
    export IFS="//\n"
    for word in $head; do
       # echo "word = $word"

        if [[ $word == *"PDB"* ]]; then
               # extract the variables we want
            pdb=$(echo $word | grep -o -P '(?<=PDB: ).*(?=CHAIN:)' )
            #echo "PDB =" $pdb
            chain=$(echo $word | grep -o -P '(?<=CHAIN: ).*(?=AC:)' )
            #echo "Chain =" $chain
            uniprot=$(echo $word | grep -o -P '(?<=AC: ).*(?=ID:)' )
            #echo "Uniprot =" $uniprot

            # adding to output
            echo "$uniprot;${pdb^^};$chain" >> $outputFile
        fi

    done





done < ${inputFile}

