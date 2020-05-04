#!/usr/bin/env bash

############################
start() {
    echo "##########################################################"
    echo "#                                                        #"
    echo "#    PickPocket Starting, have a good run.               #"
    echo "#                                                        #"
    echo "##########################################################"


    echo "# 	PickPocket Starting, have a good run.		       #" >> $logfile
    echo "##########################################################" >> $logfile

}

stop() {
	echo "Stoping $0"
	exit 1; #!/bin/bash

# Ben Viart  January 2019, PickPocket is a program made to create a training matrix of descriptive properties from a set of specific
# pocket. Using a list of PDB identifiers and a list of ligand identifier PickPocket compute all the pockets from the 3D structure without the
# ligands. Correct pockets are identified by ligand distance to the pocket centroids ( less than 1A°).
# The output is a matrix of pockets with descriptive values that can be used to train a predictive model.
# For more information see README file

}

#########################
# The command line help #
#########################
help() {

	echo "Usage: $0 -i input_file -l ligand_3letter_file -p pdb -o output_folder/" >&2
	echo "program to train and predict protein pocket function 

where:
	-h 	: show this help text
	-i 	: Specify input file contain the list of desired pdb to train. 
	-n	: Specific PDB set for negative pocket. If not specified, pocket from input structure that do not contain the ligands
	-o 	: Ouput folder, will be stored all PDB downloaded, pocket files and R files. 
	-l 	: Ligand codes file. File containing the 3 letter code for all the considered ligand. \n 
			 A script needs to be made to do that.
	-p  : PDB folder. All pdb will be download here if not already present
	-D	: D argument of fpocket (  see man fpocket, default 2.5 )
	-m	: m argument of fpocket  (  see man fpocket, default 4 )
	-M	: M argument of fpocjet (see man fpocket, default 6 )
	-r	: Cutoff distance between pocket and ligand to be considered -correct-, default 1A
    -v 	: Verbose. Default False.
	-t	: Training, default True. If training is set to false, the program will stop after computing the descriptive matrix. 
	-R	: Remove default False. If set to True, all temporary files from fpocket and other program will be deleted. 
		  If training is set to false, remove will be set to true. 
	-L	: Default false. Check for other ligands. PDB may contain other ligand that will be automatically assume as negative pockets. 
		  If set to true a file will be create storing the other ligands in the PDB for you to check and add if necessary. 

"
    exit 1 ; 
}

#################################

# Let's remove all files from previous run
# remove log files
rm -f $outputFolder*.log 
# remove pdb
rm -f $outputFolder*.pdb
# Remove the old temp ligand files 
rm -f $outputFolder.*.ligand_tmp
# Remove the old pocketSummary
rm -f ${outputFolder}*.csv
rm -f ${outputFolder}*.tsv
# Remove the old temp
rm -f ${outputFolder}*_tmp

#############################

# Program Starting : 
#start()
# Arguments parsing =>

##########################################################
# Setting variables
##########################################################
# default setting => 
verbose=false
training=true
remove=false
outputFolder="./PickPocket_output/"
otherLigands=false

# Backing execution dir 
MYDIR="$(dirname "$(readlink -f "$0")")"
# negative pdb
negativePDB=false

# fpocket defaults arguments  
fpocketDarg=2.5
fpocketmarg=4
fpocketMarg=6
# default distance cutoff
distanceCutoff=1
# PARSIN ARGUMENTS 
while getopts "a:b:c:d:D:e:f:g:hi:j:k:l:L:m:M:n:o:p:q:r:s:t:u:vx:y:z:w:" OPTION
do
    case $OPTION in
		h)
			help
			;;
		i)
			inputFile=$OPTARG
			;;
		l)
			ligandFile=$OPTARG
			;;
		o)
			outputFolder=$OPTARG
			;;
		v)
			verbose=true
			;;
		r)
			distanceCutoff=$OPTARG
			;;
		D)
			fpocketDarg=$OPTARG
			;;
		p)
			pdbFolder=$OPTARG
			;;
		m)
			fpocketmarg=$OPTARG
			;;
		M)
			fpocketMarg=$OPTARG
			;;
		t)
			training=false
			;;
		R)
			remove=false
			;;
		L)
			otherLigands=true
			;;
		n)
			negativePDB=$OPTARG
			;;

		?)
			help
            ;;
    esac
done
# Catching no arguments 
if [ $OPTIND -eq 1 ]; then help; fi




##########################################################
# Output Folder 
##########################################################
# Make sure output folder end with / 
case "$outputFolder" in
	*/)
	    if [ "$verbose" = true ]  ; then
	    	echo "Output folder end with a slash, proceeding..."
	    fi
	    ;;
	*)
	    echo "Output folder doesn't end with a slash, Problem !"
	    help
	   ;;
esac
# Create the output folder existing or not 
mkdir -p ${outputFolder}
mkdir -p ${outputFolder}/tmp

# Remove the folder from fpocket  
rm -R -f $outputFolder*_out
rm -R -f $outputFolder*_tmp


################################
##########################################################
# Output Folder 
##########################################################
# Make sure output folder end with / 
case "$pdbFolder" in
	*/)
	    if [ "$verbose" = true ]  ; then
	    	echo "PDB folder end with a slash, proceeding..."
	    fi
	    ;;
	*)
	    echo "PDB folder doesn't end with a slash, Problem !"
	    help
	   ;;
esac
# Create the output folder existing or not 
mkdir -p ${pdbFolder}


################################

# Create log file => 
logfile=${outputFolder}pprun.log
# if exist remove
if [ -e ${logfile} ]
then
  rm $logfile
fi
# Create log file
touch $logfile

start

##########################################################
# catching problems For Input File 
##########################################################
#check if file
if [ "$verbose" = true ] ; then
    echo "Checking the input files"
fi

if [ ! -e ${inputFile} ]
then
    echo "Error: The file ${inputFile} does not exist" 1>&2
    help
fi

# Full file into lower case, just in case ;)
#sed -e "s/[A-Z]/[a-z]/g" ${inputFile} > input_file.tmp
#mv input_file.tmp ${inputFile} 

nbcol=$(awk 'BEGIN{FS="\t"}{print NF ; exit}' $inputFile)
#check the number of column (integer and >=1)
if [[ ${nbcol} =~ ^-?[0-9]+$ ]]
then
    if [ ${nbcol} -lt 1 ]
    then
	echo "Error: The number of column \"${nbcol}\" is not >=1!" 1>&2
	help
    fi
else
    echo "Error: The number of column \"${nbcol}\" is not an integer!" 1>&2
    help
fi

# checking for column consistency 

colNumber=$(awk 'BEGIN{FS="\t"}{print NF}' ${inputFile}  | sort -nu | wc -l )

if [ ${colNumber} -eq 1 ]
then 
	if [ "$verbose" = true ] ; then
		echo "Input file line count is uniform, proceeding..."
		echo "Input file line count is uniform, proceeding..." >> $logfile
	else 
		echo "Input file line count is uniform, proceeding..." >> $logfile
	fi
else
	 echo "Error: The number of column is not uniform throughout the input file!" 1>&2
    help
	
fi


#################################
##########################################################
# catching problems For Ligand file
##########################################################
#check if file
if [ ! -e ${ligandFile} ]
then
    echo "Error: The file ${ligandFile} does not exist" 1>&2
    help
fi

#check if file
if [ "$negativePDB" != false ]  ; then
	if [ ! -e ${negativePDB} ]
	then
	    echo "Error: The file ${negativePDB} does not exist" 1>&2
	    help
	fi
fi

nbcol=$(awk 'BEGIN{FS="\t"}{print NF ; exit}' $ligandFile)
#check the number of column (integer and >=1)
if [[ ${nbcol} =~ ^-?[0-9]+$ ]]
then
    if [ ${nbcol} -lt 1 ]
    then
	echo "Error: The number of column \"${nbcol}\" is not >=1!" 1>&2
	help
    fi
else
    echo "Error: The number of column \"${nbcol}\" is not an integer!" 1>&2
    help
fi

# checking for column consistency 

colNumber=$(awk 'BEGIN{FS="\t"}{print NF}' ${ligandFile}  | sort -nu | wc -l )

if [ ${colNumber} -eq 1 ]
then 
	if [ "$verbose" = true ]  ; then
		echo "Ligand file line count is uniform, proceeding..."
		echo "Ligand file line count is uniform, proceeding..." >> $logfile
	else 
		echo "Ligand file line count is uniform, proceeding..." >> $logfile
	fi
else
	 echo "Error: The number of column is not uniform throughout the ligand file!" 1>&2
    help
	
fi


# A lot more things to catch !!! 


##########################################################
# Now starting to work ! 
##########################################################

if [ "$verbose" = true ]  ; then
	echo "Now starting to work !"
	echo "Now starting to work !" >> $logfile
else 
	echo "Now starting to work !" >> $logfile
fi



# Make pfb list all small caps and remove .pdb incase 
# todo

if [ "$verbose" = true ]  ; then
	echo "Downloading the PDB using pdb_fetch"
	echo "Downloading the PDB using pdb_fetch" >> $logfile
else 
	echo "Downloading the PDB using pdb_fetch" >> $logfile
fi

# Checking the website of PDB

server="209.99.64.43"
ping -c 2  $server  > /dev/null 2>&1
if [ $? -eq 0 ]; then
    if [ "$verbose" = true ]  ; then
        echo "Protein Databank site check ";
    fi
else
    echo "Protein Databank not reachable ";
    exit ;
fi


# Download the pdbs ( 1 biounit ! ) #### Commented for now, Only download if not already there 

while read line; do 
	if [ ! -f ${pdbFolder}${line}.pdb ];then
		pdb_fetch -biounit $line > "$pdbFolder$line.pdb"
        if [ "$verbose" = true ]  ; then
            echo "Downloading pdb = $line..."
            echo "Downloading pdb = $line..." >> $logfile
        else
            echo "Downloading pdb = $line..." >> $logfile
        fi
	fi
done < ${inputFile} 


# Negative PDB if specified 

if [ "$negativePDB" != false ]  ; then

	if [ "$verbose" = true ]  ; then
  		echo "Downloading the Negative PDB using pdb_fetch"
		echo "Downloading the Negative PDB using pdb_fetch" >> $logfile
	else 
		echo "Downloading the Negative PDB using pdb_fetch" >> $logfile
	fi
	
		
	while read line; do 
		if [ ! -f ${pdbFolder}${line}_NoHET.pdb ];then
			pdb_fetch -biounit $line > "$pdbFolder$line.pdb" 
		fi
	done < ${negativePDB} 



fi 


# Extract the ligand lines. select only Molecule 3letter codes and X,Y,Z
if [ "$verbose" = true ]  ; then
	echo "Extracting the ligand coordinates"
	echo "Extracting the ligand coordinates"  >> $logfile
else 
	echo "Extracting the ligand coordinates"  >> $logfile
fi

################## Other ligands ##########################""
if [ "$otherLigands" = true ]  ; then
	touch ${outputFolder}negativeligands_tmp
	# Take care of other ligands that might be similar 
	while read line; do  
		ligandNumber=$(grep "^HETNAM" ${pdbFolder}$line.pdb | wc -l)
		if [ ${ligandNumber} > 1 ] 
		then 
			#echo "$line $ligandNumber"
			# more than one ligand in file 
			grep "^HETNAM" ${pdbFolder}$line.pdb | grep -v -f $ligandFile | grep -v -f ${outputFolder}negativeligands_tmp  | sed -r 's/^.{11}//' >> ${outputFolder}otherligands_tmp
			
		fi

	done < ${inputFile} 
	echo "File other ligand created in the ouput folder !"
fi
###################################################
# For all pdb files in pdb folder
files=$pdbFolder*.pdb
for f in $files ; do 
	# Removed the HETATM from the start because fome F**** file look like this : HETATM11988 ....... 
	grep -f $ligandFile $f | grep "^HETATM" |  sed -e "s/^HETATM//" | awk '{print $2 "_" $1 ";" $3 ";" $6 ";" $7 ";" $8}' > ${f}.ligand_tmp
done

    mv ${pdbFolder}*.ligand_tmp ${outputFolder}tmp/ 2>>$logfile

###########################################################################################
# FPOCKET 
if [ "$verbose" = true ]  ; then
	echo "Running fpocket"
	echo "Running fpocket"  >> $logfile
else 
	echo "Running fpocket"  >> $logfile
fi
# Runing fpocket on each pdb 


while read line; do 
	if [ ! -f ${outputFolder}${line}_out/pockets/pocket0_vert.pqr ]; then
		# Delete HETATM # remove the pdb file
		pdb_delhetatm $pdbFolder$line.pdb |  pdb_tidy > ${pdbFolder}${line}_NoHET.pdb
		fpocket -D $fpocketDarg -M $fpocketMarg -m $fpocketmarg -f ${pdbFolder}${line}_NoHET.pdb 1>> $logfile 2>>$logfile
		echo "fpocket -D $fpocketDarg -M $fpocketMarg -m $fpocketmarg -f ${pdbFolder}${line}_NoHET.pdb"
	else
		if [ "$verbose" = true ]  ; then

			echo "No fpocket skipped for $line "
			echo "No fpocket skipped for $line "  >> $logfile
		fi
	fi
	mv ${pdbFolder}${line}_NoHET_out ${outputFolder} 2>>$logfile
done < ${inputFile} 
# moving the fpocket results 


# in case of negative PDB 
if [ "$negativePDB" != false ]  ; then
	while read line; do 
		if [ ! -f ${outputFolder}${line}_out/pockets/pocket0_vert.pqr ]; then
			# Delete HETATM 
			pdb_delhetatm $pdbFolder$line.pdb |  pdb_tidy > ${pdbFolder}${line}_NoHET.pdb
			fpocket -D $fpocketDarg -M $fpocketMarg -m $fpocketmarg -f ${pdbFolder}${line}_NoHET.pdb 1>> $logfile 2>>$logfile
			
		else
			if [ "$verbose" = true ]  ; then
				echo "No fpocket skipped for negative PDB $line "
				echo "No fpocket skipped for negative PDB $line "  >> $logfile
			fi
		fi
		mv ${pdbFolder}${line}_NoHET_out ${outputFolder} 2>>$logfile
	done < ${negativePDB} 
fi 
#################################STRIDE ######################################
# New iteration of the PDB input file to compute the stride 
if [ "$verbose" = true ]  ; then
	echo "Computing Stride for all PDBs"
	echo "Computing Stride for all PDBs"  >> $logfile
else 
	echo "Computing Stride for all PDBs"  >> $logfile
fi
while read line; do 
	if [ ! -d ${outputFolder}${line}_NoHET_out/ ]; then
	    if [ "$verbose" = true ]  ; then
   		    echo "No directory found for $line, passing through "
   		fi
	else
		# Here you compute the stride ouptput for the pdb 
		touch ${outputFolder}${line}_NoHET_out/${line}_stride.tmp
		stride -f ${pdbFolder}${line}_NoHET.pdb -f${outputFolder}${line}_NoHET_out/${line}_stride.tmp >> $logfile 2>>$logfile
		grep "^ASG" ${outputFolder}${line}_NoHET_out/${line}_stride.tmp > ${outputFolder}${line}_NoHET_out/${line}_stride.out
		rm ${outputFolder}${line}_NoHET_out/${line}_stride.tmp
	fi 
done < ${inputFile} 

# In case of negative PDB 
if [ "$negativePDB" != false ]  ; then
	if [ "$verbose" = true ]  ; then
		echo "Computing Stride for all negative PDBs"
		echo "Computing Stride for all negative PDBs"  >> $logfile
	else 
		echo "Computing Stride for all negative PDBs"  >> $logfile
	fi
	while read line; do 
		if [ ! -d ${outputFolder}${line}_NoHET_out/ ]; then
		    if [ "$verbose" = true ]  ; then
	   		    echo "No directory found for $line, passing through "
	   		fi
		else
			# Here you compute the stride ouptput for the pdb 
			touch ${outputFolder}${line}_NoHET_out/${line}_stride.tmp
			stride -f ${pdbFolder}${line}_NoHET.pdb -f${outputFolder}${line}_NoHET_out/${line}_stride.tmp >> $logfile 2>>$logfile
			grep "^ASG" ${outputFolder}${line}_NoHET_out/${line}_stride.tmp > ${outputFolder}${line}_NoHET_out/${line}_stride.out
			rm ${outputFolder}${line}_NoHET_out/${line}_stride.tmp
		fi 
	done < ${negativePDB}
fi

###########################################################################################
# in each _out folder there are files _atm.pdb that need to be parsed and stored.  
# Since I dont know how much pocket there are for each pdb, let's look for all the extension recursively in the from the output folder

if [ "$verbose" = true ]  ; then
	echo "Compiling all the fpocket results into one file"
	echo "Compiling all the fpocket results into one file"  >> $logfile
else 
	echo "Compiling all the fpocket results into one file"  >> $logfile
fi


# Reference of values to extract from the pocket results 
pocketValues="Pocket Score;Drug Score;Number of V. Vertices;Mean alpha-sphere radius;Mean alpha-sphere SA;Mean B-factor;Hydrophobicity Score;Polarity Score;Volume Score;Real volume;Charge Score;Local hydrophobic density Score;Number of apolar alpha sphere;Proportion of apolar alpha sphere"
export IFS=";"
for field in $pocketValues; do
	echo $field >> ${outputFolder}/tmp/pocketValue_tmp
done


# Create the pocket summary file. # The output file will use space as separator ! 
touch ${outputFolder}pocketSummary.csv
echo "PDB PocketNumber PocketPosition "${pocketValues// /_}" SASA AlphaHelix Coil Strand Turn Bridge Helix310" > ${outputFolder}pocketSummary.csv


#output before treatment
if [ "$verbose" = true ]  ; then
	echo "Parsing all pocket file one by one"
	echo "Parsing all pocket file one by one"  >> $logfile
else 
	echo "Parsing all pocket file one by one"  >> $logfile
fi

# For each PDB in the input file parse the output folder and gather all the atm.pdb files ( pocket  ) 
while read line; do 
	# Retrieve the atm files from the pocket folder
	# Test if the folder contains at least on file !!!! 
	if [ ! -f ${outputFolder}${line}_NoHET_out/pockets/pocket0_vert.pqr ]; then
	    if [ "$verbose" = true ]  ; then
   		    echo "No pocket found for $line, passing through "
   		fi
	else
		##
		pocketfiles=$(cd  ${outputFolder}${line}_NoHET_out/pockets/ ; ls *_vert.pqr)
		#echo "##############  Pocket"  $pocketfiles

		# iteration of the different files called pocketfiles
		while read f; do 
		# extracting the pdb and pocket number out of the file name. 
			pocketNum=$(echo $f | sed 's/[^0-9]*//g') 
			#########################################################################

			# Stride part ! 
			# Extract only the line that start with 'ATOM' 
			grep "^ATOM" ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_atm.pdb > ${outputFolder}atmpdb_tmp
			if [[ -s "${outputFolder}atmpdb_tmp" ]]; then
                  # build a tmp file with the chain and number of residue from the pocket.
                rm -f ${outputFolder}residue_tmp
                touch ${outputFolder}residue_tmp
                while read fileline; do
                    chain=${fileline:21:1}
                    position=${fileline:22:4}
                    #echo "Chain=" $chain "   Position=" $position
                    echo $chain";"$position >> ${outputFolder}residue_tmp
                done < ${outputFolder}atmpdb_tmp

                cat ${outputFolder}residue_tmp | sort | uniq  | grep "^[A-Z0-9];*" > ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_residues.csv
                # make a file of the different portions of chain  ex A 1-12 \n B 24-34
                # Check if file is empty before running script
                if [[ -s "${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_residues.csv" ]]; then
                    Rscript $MYDIR/residueDomain.R --filepath=${outputFolder}${line}_NoHET_out/pockets/ --filename=pocket${pocketNum}_residues.csv
                else
                    echo " No line in pocket residue file for ${line}"
                fi

            else
                echo "No atom in the file ${outputFolder}atmpdb_tmp"
            fi


			# Cross match the line from stride file to ATOM selection. ( col 4 5 and 6 match 2 3 and 4 )			
			awk 'NR==FNR{a[$4,$5,$6];next} ($2,$3,$4) in a'  ${outputFolder}atmpdb_tmp ${outputFolder}${line}_NoHET_out/${line}_stride.out > ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out
			# compute the diffent value we want to add in the matrix 		
			sasasum=$(awk '{sum+=$10} END {print sum}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)
			# Different type of SS => 
			alpha=$(awk ' BEGIN {count=0;}  { if ($7 == "AlphaHelix") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)			
			coil=$(awk ' BEGIN {count=0;}  { if ($7 == "Coil") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
			strand=$(awk ' BEGIN {count=0;}  { if ($7 == "Strand") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)		
			turn=$(awk ' BEGIN {count=0;}  { if ($7 == "Turn") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
			bridge=$(awk ' BEGIN {count=0;}  { if ($7 == "Bridge") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
			helix310=$(awk ' BEGIN {count=0;}  { if ($7 == "310Helix") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
			# End stride part
			#########################################################################
			#Reading of the pocket window on
			pocketPosition="[]"
			if [ -f ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_residues.csv.out ]; then
			    pocketPosition=$(cat ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_residues.csv.out)
		 	    lineBuild="$line $pocketNum $pocketPosition"
		 	else
		 	    lineBuild="$line $pocketNum $pocketPosition"
		 	fi
			#echo "### line = $line file =   $f  Pocket Num =  $pocketNum"
			##################################################################
			#  	Here we treat the file to make a line out of it 	 #
			##################################################################
			# Extract the lines with the pocket descriptives values and reformat. 
	 		resultLine=$(grep -f ${outputFolder}/tmp/pocketValue_tmp ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr |  cut -d ':' -f 2 |sed 's/[^0-9.+-]*//g')
			#Reformat the line so it's csv 
			resultLineFormat=$(echo $resultLine | sed -n -e 'H;${x;s/\n/;/g;s/^,//;p;}' )
			lineBuild="$lineBuild$resultLineFormat"
			lineBuild="$lineBuild $sasasum $alpha $coil $strand $turn $bridge $helix310"
			echo $lineBuild >> ${outputFolder}pocketSummary.csv
			# Let's also store the X Y Z of the AA from the pocket in temp files similar to the ones for the ligand. Format in the same way than the ligand
			grep "^ATOM " ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr |  
			awk '{print $10 ";" $3 ";" $6 ";" $7 ";" $8}' > ${outputFolder}tmp/${line}.pdb.pocket.${pocketNum}_tmp
			


		done <<< $pocketfiles
	fi

done < ${inputFile} 

#output after treatment treatment
if [ "$verbose" = true ]  ; then
	echo "Parsing done, results are in ${outputFolder}pocketSummary.csv"
	echo "Parsing done, results are in ${outputFolder}pocketSummary.csv"  >> $logfile
else 
	echo "Parsing done, results are in ${outputFolder}pocketSummary.csv"  >> $logfile
fi

####################### Same code for the negative PDB if needed 
if [ "$negativePDB" != false ]  ; then

	
	# Create the negative pocket summary file. # The output file will use space as separator ! 
	touch ${outputFolder}negativeSummary.csv
	echo "PDB PocketNumber PocketPosition "${pocketValues// /_}" SASA AlphaHelix Coil Strand Turn Bridge Helix310" > ${outputFolder}negativeSummary.csv

	# For each PDB in the input file parse the output folder and gather all the atm.pdb files ( pocket  ) 
	while read line; do 
		# Retrieve the atm files from the pocket folder
		# Test if the folder contains at least on file !!!! 
		if [ ! -f ${outputFolder}${line}_NoHET_out/pockets/pocket0_vert.pqr ]; then
		    if [ "$verbose" = true ]  ; then
	   		    echo "No pocket found for $line, passing through "
	   		fi
		else
			##
			pocketfiles=$(cd  ${outputFolder}${line}_NoHET_out/pockets/ ; ls *_vert.pqr)
			#echo "##############  Pocket"  $pocketfiles
			

			# iteration of the different files called pocketfiles
			while read f; do 
			# extracting the pdb and pocket number out of the file name. 
				pocketNum=$(echo $f | sed 's/[^0-9]*//g') 
				#########################################################################
				# Stride part ! 
				# Extract only the line that start with 'ATOM' 
				grep "^ATOM" ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_atm.pdb > ${outputFolder}atmpdb_tmp
				# Cross match the line from stride file to ATOM selection. ( col 4 5 and 6 match 2 3 and 4 )			
				awk 'NR==FNR{a[$4,$5,$6];next} ($2,$3,$4) in a'  ${outputFolder}atmpdb_tmp ${outputFolder}${line}_NoHET_out/${line}_stride.out > ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out
				# compute the diffent value we want to add in the matrix 		
				sasasum=$(awk '{sum+=$10} END {print sum}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)
				# Different type of SS => 
				alpha=$(awk ' BEGIN {count=0;}  { if ($7 == "AlphaHelix") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)			
				coil=$(awk ' BEGIN {count=0;}  { if ($7 == "Coil") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
				strand=$(awk ' BEGIN {count=0;}  { if ($7 == "Strand") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)		
				turn=$(awk ' BEGIN {count=0;}  { if ($7 == "Turn") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
				bridge=$(awk ' BEGIN {count=0;}  { if ($7 == "Bridge") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
				helix310=$(awk ' BEGIN {count=0;}  { if ($7 == "310Helix") count+=1} END {print count}' ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_stride.out)	
				# End stride part
				#########################################################################
			 	lineBuild="$line $pocketNum" 
				#echo "### line = $line file =   $f  Pocket Num =  $pocketNum"
				##################################################################
				#  	Here we treat the file to make a line out of it 	 #
				##################################################################
				# Extract the lines with the pocket descriptives values and reformat. 
		 		resultLine=$(grep -f ${outputFolder}/tmp/pocketValue_tmp ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr |  cut -d ':' -f 2 |sed 's/[^0-9.+-]*//g')
				#Reformat the line so it's csv 
				resultLineFormat=$(echo $resultLine | sed -n -e 'H;${x;s/\n/;/g;s/^,//;p;}' )
				lineBuild="$lineBuild []$resultLineFormat"
				lineBuild="$lineBuild $sasasum $alpha $coil $strand $turn $bridge $helix310"
				echo $lineBuild >> ${outputFolder}negativeSummary.csv
				# Let's also store the X Y Z of the AA from the pocket in temp files similar to the ones for the ligand. Format in the same way than the ligand
				grep "^ATOM " ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr |  
				awk '{print $10 ";" $3 ";" $6 ";" $7 ";" $8}' > ${outputFolder}tmp/${line}.pdb.pocket.${pocketNum}_tmp
				


			done <<< $pocketfiles
		fi

	done < ${negativePDB} 

	# remove temporary file 
	rm ${outputFolder}*_tmp
	#output after treatment treatment
	if [ "$verbose" = true ]  ; then
		echo "Parsing done, negative results are in ${outputFolder}negativeSummary.csv"
		echo "Parsing done, negative results are in ${outputFolder}negativeSummary.csv"  >> $logfile
	else 
		echo "Parsing done, negative results are in ${outputFolder}negativeSummary.csv"  >> $logfile
	fi
fi

# if option remove  
if [ "$remove" = true ]; then
	rm -R $outputFolder/*_out
fi

################################################################################
# Summary  : 
# At this point you have a table of all pocket descriptive value 'pocketSummary.csv' in the main folder. 
# In the tmp folder you have '2lkk.pdb.pocket.2_tmp' files that have the pocket residues
# Also the _ligand file that have the coordinates of the different 'selected ligand' position for all pdb files. 
# I think it's time for R ! 
# See you tomorow ! 
# 
# The R script compute the distance between pockets and ligands. 
# From that we determine the correct pocket and the negative.
#################################################################################

# If training is false then the program should stop here with a message => the results are paste(argsL$folderOutput,"results_tmp.tsv",sep ="")

if [ "$training" != true ]  ; then

	echo "the results are in ${folderOutput}pocketSummary.csv"
	echo "the results are in ${folderOutput}pocketSummary.csv"  >> $logfile
    exit 0
fi

if [ "$verbose" = true ]  ; then
		echo "Rscript will launch now. Correct pocket will be computed"
		echo "Rscript will launch now. Correct pocket will be computed"  >> $logfile
	else
		echo "Rscript will launch now. Correct pocket will be computed"  >> $logfile
fi

if [ "$verbose" = true ]  ; then
    echo "$MYDIR/pickPocket.R  --folderOutput=$outputFolder --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=$distanceCutoff --negativeSet=$negativePDB --negativeSummaryFileName=negativeSummary.csv --verbose=$verbose"
else
    echo "$MYDIR/pickPocket.R  --folderOutput=$outputFolder --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=$distanceCutoff --negativeSet=$negativePDB --negativeSummaryFileName=negativeSummary.csv --verbose=$verbose" >> $logfile
fi

Rscript $MYDIR/pickPocket.R  --folderOutput=$outputFolder --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=$distanceCutoff --negativeSet=$negativePDB --negativeSummaryFileName=negativeSummary.csv  --verbose=$verbose 2>>$logfile

if [ "$verbose" = true ]  ; then
		echo "Rscript exit"
		echo "Rscript exit"  >> $logfile
	else
		echo "Rscript exit"  >> $logfile
fi

##########################################################################################
#
#     Now you have the training matrix
#     End of the first part of the Pickpocket routine
#
##########################################################################################

echo "Pickpocket finished, results matrix can be found at ${outputFolder}train.tsv "
echo "You can know run the Neural network training "

echo "Pickpocket finished, results matrix can be found at ${outputFolder}train.tsv " >> $logfile
echo "You can know run the Neural network training " >> $logfile

#echo ${MYDIR}
#cat ${inputFile}
#cat ${ligandFile}
#echo ${outputFolder}
