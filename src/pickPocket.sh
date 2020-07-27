#!/usr/bin/env bash

# Ben Viart  January 2019, PickPocket is a program made to create a training matrix of descriptive properties from a set of specific
# pocket. Using a list of PDB identifiers and a list of ligand identifier PickPocket compute all the pockets from the 3D structure without the
# ligands. Correct pockets are identified by ligand distance to the pocket centroids ( less than 1A°).
# The output is a matrix of pockets with descriptive values that can be used to train a predictive model.
# For more information see README file

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
	exit 1; 

}

#########################
# The command line help #
#########################
help() {

	echo "Usage: $0 -i input_file -l ligand_3letter_file -p pdb -o output_folder/" >&2
	echo "program to train and predict protein pocket function 

where:
	-h 	: Show this help
	-i 	: The input file containing the list of the PDB ids to train. 
	-n	: PDB ids set for negative pocket. Pocket from input structure that do not contain the ligands are also used as negatives.
	-o 	: Output folder, will contain all PDB downloaded, pocket files and R files.
	-l 	: Ligand codes file. It has to contain a list of 3 letter code ligands considered as target.
	      For a multiclass option a second column (tsv) has to contain the name of the class.  
	-p  : PDB folder. All pdb will be downloaded here if not already present
	-D	: D argument of fpocket (  see man fpocket, default 2.5 )
	-m	: m argument of fpocket  (  see man fpocket, default 4 )
	-M	: M argument of fpocket (  see man fpocket, default 6 )
	-r	: Cutoff distance between the pocket and the ligand to be considered -correct-, default 1A
    -v 	: Verbose. Show additional output Default False.
    -s  : Silent. Don't show the progress bar. Default False. 
	-t	: Training, default True. If training is set to false, the program will stop after computing the descriptive matrix.
	      Negative PDB are not used if traning is false.
	-R	: Remove default False. If set to True, all temporary files from fpocket and other program will be deleted. 
		    If training is set to false, remove will be set to true.
	-L	: Default false. Check for other ligands. PDB may contain other ligand that will be automatically assume as negative pockets. 
		    If set to true a file will be create storing the other ligands in the PDB for you to check and add if necessary.

"
    exit 1 ; 
}

progress() {
    if [[ "${silent}" == "false" ]]; then 
        if [[ $1 == "init" ]] ; then
            progress_total=$(wc -l $2 | awk '{print $1}' )
            progress_curr=1
            echo -e "\n$3\n"
        else 
            let _progress=(${progress_curr}*100/${progress_total}*100)/100
            let _done=(${_progress}*4)/10
            let _left=40-$_done
            _fill=$(printf "%${_done}s")
            _empty=$(printf "%${_left}s")
            printf "\rProgress : [${_fill// /#}${_empty// /-}] ${_progress}%% $1"
            progress_curr=$(( progress_curr + 1 ))
            if [[ ${progress} -eq 100 ]]; then
                echo -e "\n"
            fi
        fi
    fi
}

message() {
    timestamp="[$(date +%y-%m-%d-%H:%M:%S)] "
    if [[ "${verbose}" == "true" ]]; then
        if [[ "${progress_total}" == "${progress_curr}" ]] ; then
            echo ${timestamp} $@
        else
            printf "\r${timestamp} $@                                         \n" 
        fi
    fi
    echo ${timestamp} $@ >> $logfile
}

checkFile(){
    if [ ! -e $1 ]; then
        echo "Error: The file ${inputFile} does not exist" 1>&2
        help
    fi
}

checkRequirements() {
    requirements="pdb_fetch pdb_delhetatm pdb_tidy pdb_delhetatm fpocket stride"
    for req in $requirements; do
        if ! command -v $req &> /dev/null
        then
            echo -e "ERROR! Program ${req} not found! \n\n"
            help
        fi
    done
    locale 2> ./missing_locale.tmp > /dev/null
    grep "Cannot" ./missing_locale.tmp > ./missing_locale.tmp2
    while read line ; do
        e_var=$(echo $line | awk '{ print $4 }')
        export $e_var="C"
    done < missing_locale.tmp2
    rm ./missing_locale.tmp*
}

checkPDBList() {
    infile_check=$(awk ' !/^\w{4}$/ {print "ERROR" ; exit}' $1)
    if [[ "${infile_check}" == "ERROR" ]]; then
        awk ' !/^\w{4}$/ {print "ERROR: line " NR " is not well formatted: \nline " NR " = " $0 }' $1
        help
    fi
}

#################################


# First of all check the required software

checkRequirements

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
sep="\t"
# Backing execution dir 
MYDIR="$(dirname "$(readlink -f "$0")")"
# negative pdb
negativePDB=false
silent=false
# fpocket defaults arguments  
fpocketDarg=2.5
fpocketmarg=4
fpocketMarg=6
# default distance cutoff
distanceCutoff=1
# PARSIN ARGUMENTS 


while getopts "a:b:c:d:D:e:f:g:hi:j:k:l:Lm:M:n:o:p:q:r:st:u:vx:y:z:w:" OPTION
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
        s)
            silent=true
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

outputFolder=$(echo $outputFolder | awk '{if ($1 !~/\/$/ ) { print $1 "/" }  }' )

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


# Create the output folder existing or not 
mkdir -p ${outputFolder} ${outputFolder}/tmp

# Remove the folder from fpocket  
rm -R -f $outputFolder*_out $outputFolder*_tmp


################################
##########################################################
# Output Folder 
##########################################################
# Make sure output folder end with / 

pdbFolder=$(echo $pdbFolder | awk '{ if ($1 !~/\/$/ ) { print $1 "/" }  }' )

# Create the output folder existing or not 
mkdir -p ${pdbFolder}


################################

# Create log file 
logfile=${outputFolder}pprun.log
> $logfile

start

start_time=$(date +%s)

##########################################################
# Check files
##########################################################

message "Checking the input files"

checkFile ${inputFile}

checkPDBList $inputFile

if [ "$training" = false ]  ; then
  checkFile ${ligandFile} 
fi

if [ "$negativePDB" != false ]  ; then
  checkFile ${negativePDB}
  checkPDBList $negativePDB
fi




##########################################################
# Now starting to work ! 
##########################################################

message "Now starting to work!"

# Make pfb list all small caps and remove .pdb incase
# todo
message "Downloading the PDB using pdb_fetch"


# Checking the website of PDB

server_status=$(wget -S --spider https://files.rcsb.org 2>&1 |  awk '/HTTP\// {print $2}')

if [ "${server_status}" -eq 200 ]; then
    message "Protein Databank site check ";
else
    echo "ERROR! Protein Databank not reachable " >&2 ;
    exit ;
fi


# Download the pdbs ( 1 biounit ! ) #### Commented for now, Only download if not already there 

# Clean the list of pdbs from a previous run
rm -f ${outputFolder}/no_pocket.ls ${outputFolder}/pdb_list.ls ${outputFolder}/empty_pdb.ls

progress "init" $inputFile "Downloading the missing PDB files"


while read line; do 
    progress "$line"
	if [ ! -f ${pdbFolder}${line}.pdb ]; then
		pdb_fetch -biounit $line > "$pdbFolder$line.pdb" 
		message "Downloading pdb = $line..."
	fi
    if [[ $(wc -l ${pdbFolder}${line}.pdb | awk '{print $1}' ) -eq 0 ]]; then  
       message "PDB $line is empty"
       echo $line >> ${outputFolder}/empty_pdb.ls
    else
       echo $line >> ${outputFolder}/pdb_list.ls
    fi
done < ${inputFile} 

inputFile=${outputFolder}/pdb_list.ls

# Negative PDB if specified 

if [ "$negativePDB" != false ]  ; then
    message "Downloading the Negative PDB using pdb_fetch"
	while read line; do 
		if [ ! -f ${pdbFolder}${line}_NoHET.pdb ];then
			pdb_fetch -biounit $line > "$pdbFolder$line.pdb" 
		fi
	done < ${negativePDB} 
fi 


# Extract the ligand lines. select only Molecule 3letter codes and X,Y,Z. Only done in training mode

if [ "$training" = true ]  ; then
  message "Extracting the ligand coordinates"
  awk '{if ( NF == 2 ) {print $1 "\t" $2 } else { print $1 }}' $ligandFile > ${outputFolder}tmp/ligandFile
  awk '{print $1}' $ligandFile > ${outputFolder}tmp/ligandCode
################## Other ligands ##########################""
# if training is true no need to do that
  if [ "$otherLigands" = true ]  ; then
    touch ${outputFolder}negativeligands_tmp
    # Take care of other ligands that might be similar
    while read line; do
      ligandNumber=$(grep "^HETNAM" ${pdbFolder}$line.pdb | wc -l  | awk '{print $1}')
      if [ ${ligandNumber} -gt 1 ]; then
            #echo "$line $ligandNumber"
            # more than one ligand in file
            grep "^HETNAM" ${pdbFolder}$line.pdb | grep -v -f ${outputFolder}tmp/ligandCode | grep -v -f ${outputFolder}negativeligands_tmp  | sed -r 's/^.{11}//' >> ${outputFolder}otherligands_tmp
      fi
    done < ${inputFile}
    sort ${outputFolder}otherligands_tmp | uniq >  ${outputFolder}otherligands
    rm ${outputFolder}otherligands_tmp
    message "File other ligand created in the ouput folder: ${outputFolder}otherligands"
  fi

  ###################################################
  # For all pdb files in pdb folder
  files=$pdbFolder*.pdb
  for f in $files ; do
     ######## HERE ONLY USE the first column !!! ################
    # Removed the HETATM from the start because fome file look like this : HETATM11988 .......
    # Some  lines looks like this : HETATM 2069  C1  STE A1001      27.878  26.507   8.311  1.00 50.33           C
    grep -f ${outputFolder}tmp/ligandCode $f | grep "^HETATM" | awk -F "!" '{print substr($0,14,3) "_" substr($0,23,4) ";" substr($0,18,3)";" substr($0,31,8)";" substr($0,39,8)";" substr($0,47,8)}' | tr -d ' ' > ${f}.ligand_tmp
  done

  mv ${pdbFolder}*.ligand_tmp ${outputFolder}tmp/ 2>>$logfile
fi

###########################################################################################
# FPOCKET 

message "Running fpocket"

# Runing fpocket on each pdb 
progress "init" $inputFile 
while read line; do 
    progress "fpocket on $line"
	if [ ! -f ${outputFolder}${line}_out/pockets/pocket0_vert.pqr ]; then
		# Delete HETATM # remove the pdb file
   		pdb_delhetatm $pdbFolder$line.pdb |  pdb_tidy > ${pdbFolder}${line}_NoHET.pdb
   		fpocket -D $fpocketDarg -M $fpocketMarg -m $fpocketmarg -f ${pdbFolder}${line}_NoHET.pdb 1>> $logfile 2>>$logfile
   		#echo "fpocket -D $fpocketDarg -M $fpocketMarg -m $fpocketmarg -f ${pdbFolder}${line}_NoHET.pdb"
	else
		message "fpocket skipped for $line "
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

message "Computing Stride for all PDBs"

progress "init" $inputFile 

while read line; do 
    progress "Stride on $line"
    _curr=$(( _curr + 1 ))
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
	message "Computing Stride for all negative PDBs"
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

message "Compiling all the fpocket results into one file"


# Reference of values to extract from the pocket results 
pocketValues="Pocket Score${sep}Drug Score${sep}Number of V. Vertices${sep}Mean alpha-sphere radius${sep}Mean alpha-sphere SA${sep}Mean B-factor${sep}Hydrophobicity Score${sep}Polarity Score${sep}Volume Score${sep}Real volume${sep}Charge Score${sep}Local hydrophobic density Score${sep}Number of apolar alpha sphere${sep}Proportion of apolar alpha sphere"

echo -e "${pocketValues}" | awk -F "${sep}" 'NR==1 {for (i=1; i<= NF; i++) {print $i } } ' > ${outputFolder}/tmp/pocketValue_tmp

# Create the pocket summary file. # The output file will use space as separator ! 
touch ${outputFolder}pocketSummary.csv
echo -e "PDB${sep}PocketNumber${sep}PocketPosition${sep}"${pocketValues// /_}"${sep}SASA${sep}AlphaHelix${sep}Coil${sep}Strand${sep}Turn${sep}Bridge${sep}Helix310" > ${outputFolder}pocketSummary.csv

#output before treatment
message "Parsing all pocket file one by one"

# For each PDB in the input file parse the output folder and gather all the atm.pdb files ( pocket  ) 
progress "init" $inputFile 



while read line; do 
	# Retrieve the atm files from the pocket folder
	# Test if the folder contains at least one file !!!!
	progress "Post processing $line"
	if [ ! -f ${outputFolder}${line}_NoHET_out/pockets/pocket0_vert.pqr ]; then
		message "No pocket found for $line, passing through "
		echo $line >> ${outputFolder}/no_pocket.ls
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
                  message " No line in pocket residue file for ${line}"
                fi
            else
                message "No atom in the file ${outputFolder}atmpdb_tmp"
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
		 	fi
		 	lineBuild="${line}${sep}${pocketNum}${sep}$pocketPosition"
			##################################################################
			#  	Here we treat the file to make a line out of it 	         #
			##################################################################
			# Extract the lines with the pocket descriptives values and reformat. 
			
	 		resultLine=$(grep -f ${outputFolder}/tmp/pocketValue_tmp ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr | awk -v sep="${sep}" '{toprint=toprint sep $NF } END { print toprint }' )
			
			#Reformat the line so it's tsv 
			lineBuild="${lineBuild}${resultLine}"
			lineBuild="${lineBuild}${sep}${sasasum}${sep}${alpha}${sep}${coil}${sep}${strand}${sep}${turn}${sep}${bridge}${sep}${helix310}"
			echo -e "${lineBuild}" >> ${outputFolder}pocketSummary.csv
			# Let's also store the X Y Z of the AA from the pocket in temp files similar to the ones for the ligand. Format in the same way than the ligand
			grep "^ATOM " ${outputFolder}${line}_NoHET_out/pockets/pocket${pocketNum}_vert.pqr |  
			awk '{print $10 ";" $3 ";" $6 ";" $7 ";" $8}' > ${outputFolder}tmp/${line}.pdb.pocket.${pocketNum}_tmp
		done <<< $pocketfiles
	fi
done < ${inputFile} 

#output after treatment treatment
message "Parsing done, results are in ${outputFolder}pocketSummary.csv"

####################### Same code for the negative PDB if needed 
if [ "$negativePDB" != false ]  ; then
	# Create the negative pocket summary file. # The output file will use space as separator ! 
	touch ${outputFolder}negativeSummary.csv
	echo -e "PDB\tPocketNumber\tPocketPosition\t"${pocketValues// /_}"\tSASA\tAlphaHelix\tCoil\tStrand\tTurn\tBridge\tHelix310" > ${outputFolder}negativeSummary.csv

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
  if [ "$negativePDB" != false ]  ; then
    cat ${outputFolder}negativeSummary.csv >> ${outputFolder}pocketSummary.csv
  fi

  if [ "$verbose" = true ]  ; then
    Rscript $MYDIR/reformatTrainingOutput.R --filepath=${outputFolder} --filename="pocketSummary.csv"
  else
    Rscript $MYDIR/reformatTrainingOutput.R --filepath=${outputFolder} --filename="pocketSummary.csv" >> $logfile
  fi
  echo "the results are in ${outputFolder}testing.tsv"
  echo "the results are in ${outputFolder}testing.tsv"  >> $logfile
  exit 0
fi

message "The Rscript will be launched now and the correct pockets will be identified."

message "$MYDIR/pickPocket.R  --folderOutput=$outputFolder --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=$distanceCutoff --negativeSet=$negativePDB --negativeSummaryFileName=negativeSummary.csv  --verbose=$verbose"

Rscript $MYDIR/pickPocket.R  --folderOutput=$outputFolder --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=$distanceCutoff --negativeSet=$negativePDB --negativeSummaryFileName=negativeSummary.csv  --verbose=$verbose 2>>$logfile ||  echo "ERROR in during the R script! " >&2 

message "Rscript finished"

##########################################################################################
#
#     Now you have the training matrix
#     End of the first part of the Pickpocket routine
#
##########################################################################################

runtime=$(( $(date +%s) - start_time ))

echo "Pickpocket finished in $runtime seconds, results matrix can be found at ${outputFolder}train.tsv "
echo "You can know run the Neural network training "

echo "Pickpocket finished, results matrix can be found at ${outputFolder}train.tsv " >> $logfile
echo "You can know run the Neural network training " >> $logfile

#echo ${MYDIR}
#cat ${inputFile}
#cat ${ligandFile}
#echo ${outputFolder}
