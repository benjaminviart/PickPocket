#!/usr/bin/env bash
# Ben Viart april 2019, specific pocket vizualisation using pymol

############################
start() {
	echo "Starting $0" ;
}

stop() {
	echo "Stoping $0"
	exit 1;
}

#########################
# The command line help #
#########################
help() {

	echo "Usage: $0 -p path " >&2
	echo "Program to see pocket

where:
	-h 	: show this help text
	-o	: OUTPUT folder complete path, end with /
	-p  : PDB id to treat, in capital letter without .pdb
"



    exit 1 ;
}

#################################
# PARSIN ARGUMENTS
while getopts "a:b:c:d:e:f:g:hi:j:k:l:L:m:n:o:p:P:q:r:s:t:u:vx:y:z:w:" OPTION
do
    case $OPTION in
		h)
			help
		;;

		o)
 			outputFolderPath=$OPTARG
		;;

	  	p)
	    		pdbid=$OPTARG
	    	;;

	  	P)
	    		pdbFolderPath=$OPTARG
	    	;;

		?)
			help
            	;;
    esac
done
# Catching no arguments
if [ $OPTIND -eq 1 ]; then help; fi
#################################





script="./pocketViz.pml"

if [ -e ${script} ]
then
  rm $script
fi
# Create log file
touch $script



##################################

echo "from pymol import cmd,stored

cd ${outputFolderPath}${pdbid}_NoHET_out/
load  ${pdbid}_NoHET.pml
load ${pdbFolderPath}${pdbid}.pdb

util.cbc(selection='(all)',first_color=7,quiet=1,legacy=0,_self=cmd)

#select pockets, resn STP
stored.list=[]
cmd.iterate(\"(resn STP)\",\"stored.list.append(resi)\")	#read info about residues STP
#print stored.list
lastSTP=stored.list[-1]	#get the index of the last residu
hide lines, resn STP

#show spheres, resn STP
for my_index in range(1,int(lastSTP)+1): cmd.select(\"pocket\"+str(my_index), \"resn STP and resi \"+str(my_index))
for my_index in range(2,int(lastSTP)+2): cmd.color(my_index,\"pocket\"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.show(\"spheres\",\"pocket\"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set(\"sphere_scale\",\"0.3\",\"pocket\"+str(my_index))
for my_index in range(1,int(lastSTP)+1):

cmd.set(\"sphere_transparency\",\"0.1\",\"pocket\"+str(my_index))




# color and show organic
bg_color white
show cartoon
hide lines

select organic
show sphere, sele
color atomic, sele
" > $script


pymol $script & 


