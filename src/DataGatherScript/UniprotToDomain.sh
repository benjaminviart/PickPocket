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
	echo "program to extract domain out of the uniprot
where:
	-h 	: show this help text
	-i 	: Specify input file contains the list of desired uniprot references to download.
	-o 	: Ouput file
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
 #echo "PDB;CHAIN;UNIPROT"
## LOOOP
while read line; do

    rm -f $tmpFile

    echo "Treating  *******   $line "
    # write header information to the log file

    # retrieve the web page using curl. time the process with the time command.
    curl -s "https://www.uniprot.org/uniprot/$line" > $tmpFile
    grep "Family and Domains" $tmpFile > $tmpFile2


   while read fileline ; do

       shortline=$(echo $fileline | awk '{print substr($0,0,800)}' )
       #echo "Treating ="  $shortline
       position=$(echo $shortline | awk -F'[][]' '{print $2}' )
       echo "Position=" $position
       label=$(echo $shortline | grep -s -o -P '(?<=span property=\"text\">).*(?=<\/span><span class=)' )

# correct some error
       if [[ $label == *"span"* ]]; then
           label2=$(echo $label | sed 's/<.*//')
           label=$(echo $label2)

       fi
       echo "Label=" $label

       if [[ ! $label =~ [a-zA-Z] ]]; then
           echo " ERROR  no label"
           # echo $shortline
       else
           echo "$line;$label;$position" >> $outputFile
       fi

   done < $tmpFile2



done < ${inputFile}

