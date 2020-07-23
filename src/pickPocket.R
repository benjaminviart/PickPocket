#!/usr/bin/env Rscript

#debug setwd("~/test/PickPockerBenchmark/PP_smaller/")

# Collect arguments
args <- commandArgs(TRUE)
 
## Default setting when no arguments passed
if(length(args) < 1) {
  args <- c("--help")
}
 
## Help section
if("--help" %in% args) {
  cat(c("      Rscript of pocket detection and training : ",
	"   Arguments:  ",
	"--folderOutput=Folder output folder \n",
	"--pocketSummaryFileName= File corresponding to the pocket summary computed by the pickpocket.sh ",
	"--cutoffDistance= distance threshold. Under this value the pocket will be considered positive",
	"--negativeSet = second matrice of pocket description to serve as negatives in the training ",
	"--negativeSummaryFileName= file name if negative is used",
	"--verbose= true or false",

   "   Example:",
   "   Rscript $MYDIR/pickpocket.R --folderOutput=./PickPocket_output/ --pocketSummaryFileName=pocketSummary.csv --cutoffDistance=5\n\n --verbose=false"))
 
  q(save="no", status = 1 )
}

#debug args=c("--folderOutput=./results/", "--pocketSummaryFileName=pocketSummary.csv", "--cutoffDistance=1", "--negativeSet=false", "--negativeSummaryFileName=negativeSummary.csv", "--verbose=true")
 
## Parse arguments (we expect the form --arg=value)
parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
argsL <- as.list(as.character(argsDF$V2))
names(argsL) <- argsDF$V1
#print(argsL)

## NULL argument testing 

if(is.null(argsL$folderOutput)) {
	print("Folder Argument is Null. ")
	q(save = "no" , status = 1 )
}
 
if(is.null(argsL$pocketSummaryFileName)) {
 	print("Pocket Summary file Argument is Null. ")
	q(save = "no", status = 1 )
}
if(is.null(argsL$cutoffDistance)) {
 	print("Cutoff Distance Argument is Null.  ")
	q(save = "no", status = 1 )
}
argsL$cutoffDistance = as.numeric(argsL$cutoffDistance )

if(argsL$verbose){
	print(paste("A:Starting pickpocket R analysis for Pathway = ", argsL$folderOutput, " Pocket Summary File Name : ", argsL$pocketSummaryFileName ,
				"   Cutoff distance = ", argsL$cutoffDistance , " verbose = ", argsL$verbose ,sep =""))
}
##########################################################################################################################################################
#
# 		FUNCTIONS 
##########################################################################################################################################################

###############################
# function for euclidian distance of 2 dataframe where position are in 3 4 and 5 col   ! Return as a list the results 
min.eucl.dist <- function(ligand,pocket) {

	distMatrix = matrix(NA,nrow=nrow(pocket),ncol=nrow(ligand))
	for (r in 1:nrow(pocket)){
		for (c in 1:nrow(ligand)){
			distMatrix[r,c] = sqrt( (ligand[c,3] - pocket[r,3])^2 + (ligand[c,4] - pocket[r,4])^2 + (ligand[c,5] - pocket[r,5])^2 )
		}	
	}
	#print(distMatrix)
	
	minValue = min(distMatrix)
	# Results that contain the min distance and the row of the corresponding pocket residue and ligand residue. 	
	results=list( distance=minValue, 
		pocket = pocket[which(distMatrix == minValue,arr.ind = TRUE)[1],], 
			ligand = ligand[which(distMatrix == minValue,arr.ind = TRUE)[2],] )
	
	
	warnings()
	#print(results)
	return(results )
}
############################################################################################################################

#Loading the summary file
summaryFilePath = paste(argsL$folderOutput,argsL$pocketSummaryFileName,sep="")
#print(summaryFilePath)
#Check if file exist, if yes reads. 
if (file.exists(summaryFilePath)){
	summary = read.csv(summaryFilePath, sep = " ", header = T )
}else{
	print("No summary file found !  ")
	q(save = "no" , status = 1 )
}

# let's make a list of pdb from the summary file ( so if something wrong happened it will fail ) 
pdbList = unique(summary[,1])

# In case of empty list 
if(length(pdbList)<1) {
	print("No PDB found in the summary file !  ")
	q(save = "no" , status = 1 )
}

ligandCodeInputPath = paste(argsL$folderOutput,"tmp/ligandFile", sep  ="")
if (file.exists(ligandCodeInputPath)){
	# Testing if file is not empty
	info = file.info(ligandCodeInputPath)
	if(info$size < 1){
		# The file is empty
		if(argsL$verbose){
			cat("\nNo line in the ligand file \n")
		}
	}else{
		ligandCodeInput = read.csv(ligandCodeInputPath, sep = "\t", header = F )
	}
	# else for file exists.
}else{
	if(argsL$verbose){
		cat(c("\nNo ligand file found for at filepath = ", ligandCodeInputPath))
	}
}

# if the ligand input file contains more than one column, then the multiclass option is on
argsL$multicol = FALSE
if(ncol(ligandCodeInput) > 1 ){
	argsL$multicol = TRUE
	print("Multicolumn mode ON")
	colnames(ligandCodeInput) = c("ligandResidueType", "ligandClass")
}


#Let's make a function that test 2 files. 
#print(pdbList)
# Iterate though the pdb List
# For each pdb
	# Check and load the ligand
	# For each pocket 
		# compute the distance, store the results 
#########################################################

# data.frame that will store the results. later will be fused with the summary data.f
correctPocket = data.frame( distance = rep(100, nrow(summary)), ligandResidueType = rep(NA,nrow(summary)), pocketPolcar = rep(NA,nrow(summary)), ligandResidueInfo = rep(NA,nrow(summary)), pocketSphereRadius = rep(0,nrow(summary)), correctPostion = rep(NA,nrow(summary)) )
pdb="1aqu"
for (pdb in pdbList){
  
	if(argsL$verbose){
		cat(c("Treating ", pdb))
	}
	# treating variable is
	treating = TRUE
	ligandFilePath = paste(argsL$folderOutput,"tmp/", pdb, ".pdb.ligand_tmp", sep = "")
	# Testing the ligand file before the second loop ! 
	if (file.exists(ligandFilePath)){
		# Testing if file is not empty 		
		info = file.info(ligandFilePath)
		if(info$size < 1){
			# The file is empty
			if(argsL$verbose){
				cat(c("\nNo line in the ligand file found for ", pdb , "  at filepath = ", ligandFilePath,"\n"))
			}
			treating=FALSE
		}else{

			ligand = read.csv(ligandFilePath, sep = ";", header = F  , col.names = c("info","LigandCode","X","Y","Z"))
		}
	# else for file exists. 
	}else{
		if(argsL$verbose){
			cat(c("\nNo ligand file found for ", pdb , "  at filepath = ", ligandFilePath))
		}
		treating=FALSE
	}
	
	if(treating){
	# X Y Z error in the ligand file. 
		if(! is.numeric(ligand$X) ){  
			ligand$X = as.numeric(as.character(ligand$X))
			ligand = ligand[-which(is.na(ligand$X )),]		
		}
		if(! is.numeric(ligand$Y) ){  
			ligand$Y = as.numeric(as.character(ligand$Y))
			ligand = ligand[-which(is.na(ligand$Y )),]		
		}
		if(! is.numeric(ligand$Z) ){  
			ligand$Z = as.numeric(as.character(ligand$Z))
			ligand = ligand[-which(is.na(ligand$Z )),]		
		}

	}
	
	if(treating){
		# Iteration of the pockets ! 
		pocketlist =  unique(summary[which(summary[,1] ==pdb ),2])
		for(pocketnum in pocketlist){
			if(argsL$verbose){
				cat(c(" ", pocketnum))
			}
			
			# necessary test for the pocket file  
			pocketFilePath = paste(argsL$folderOutput,"tmp/", pdb, ".pdb.pocket.",pocketnum,"_tmp", sep = "")
			if (file.exists(pocketFilePath)){
				# Testing if file is not empty 		
				info = file.info(pocketFilePath)
				if(info$size < 1){
					# The file is empty
					if(argsL$verbose){
						cat(c("\nNo line in the pocket file found for ", pdb , "  at filepath = ", pocketFilePath,"\n"))
					}
				}else{

					pocket = read.csv(pocketFilePath, sep = ";", header = F , col.names = c("sphereRadius","polar","X","Y","Z"))
					distance = min.eucl.dist(ligand,pocket)

                    isgoodpocket = FALSE
                    if(is.na(distance$distance) ){distance$distance  = 1000}
                    	isgoodpocket = distance$distance <= argsL$cutoffDistance
                    	if(isgoodpocket){
							if(argsL$verbose){cat( "* " )
						}
					}

					#print(distance$ligand[1])
					# n is the position at which to store 
					n = intersect(which(summary$PDB==pdb),which(summary$PocketNumber==pocketnum))
					correctPocket$distance[n] = distance$distance
					correctPocket$ligandResidueInfo[n] 	= paste(distance$ligand$info,sep="")
					correctPocket$pocketPolcar[n] 	= paste(distance$pocket$polar,sep="")
					correctPocket$ligandResidueType[n] 	= paste(distance$ligand$LigandCode,sep="")
					correctPocket$pocketSphereRadius[n] 	= paste(distance$pocket$sphereRadius,sep="")
					correctPocket$correctPostion[n]		= paste(pdb,pocketnum,sep="_")
				}
			# else for file exists. 
			}else{
				if(argsL$verbose){
					cat(c("\nNo pocket file found for ", pdb , "  at filepath = ", ligandFilePath))
				}
			}
		}# end of pocket iteration
		if(argsL$verbose){
			cat("\n")
		}
	}else{
		if(argsL$verbose){
			cat("No ligand so no pocket test for you, all negatives  ! \n")
		}
		pocketlist =  unique(summary[which(summary[,1] ==pdb ),2])
		for(pocketnum in pocketlist){
			if(argsL$verbose){
				cat(c(" ", pocketnum))
			}
			n = intersect(which(summary$PDB==pdb),which(summary$PocketNumber==pocketnum))
			correctPocket$distance[n] = 1000
			correctPocket$correctPostion[n]		= paste(pdb,pocketnum,sep="_")
		}

	}

}# end of pdb iteration

# Out of the program for now. Combine the data.frame, save and write. 

correctPocket$correctPocket = correctPocket$distance <= argsL$cutoffDistance
correctPocket$correctBinary = rep(0, length(correctPocket$distance))
correctPocket$correctBinary[which(correctPocket$distance <= argsL$cutoffDistance)] = 1 
results = cbind(summary, correctPocket)

#write.table( results, file = paste(argsL$folderOutput,"results_tmp.tsv",sep =""),sep = "\t",  row.names = F, dec=".", na = "0")

# write out the file for training
#Check if file exist, if yes reads.


# MULTICOL OPTION #
if(argsL$multicol){
  # adding the ligandClass column.
	results=merge(results,ligandCodeInput,by="ligandResidueType")
	levels(results$ligandClass)=c(levels(results$ligandClass), "negative")
	# changing the ligandClass to 0 for negatives pockets
	results$ligandClass[which(results$correctPocket == FALSE )] = "negative"
	if (argsL$verbose){
	  print(summary(results$ligandClass))  
	}
}else{
	# if the set is not multiclass it will just be 0 and 1 following the $correctPocket value
	results$ligandClass = rep(1,nrow(results))
	results$ligandClass[which(results$correctPocket == FALSE )] = 0
}

save.image(paste(argsL$folderOutput,".backup.R", sep = ""))



columntosave = c("PDB","PocketNumber","PocketPosition","correctPocket","ligandResidueType","ligandClass","Pocket_Score","Drug_Score",
			 "Number_of_V._Vertices","Mean_alpha.sphere_radius","Mean_alpha.sphere_SA","Mean_B.factor","Hydrophobicity_Score",
			  "Polarity_Score","Volume_Score","Real_volume","Charge_Score","Local_hydrophobic_density_Score",
			  "Number_of_apolar_alpha_sphere","Proportion_of_apolar_alpha_sphere","SASA","AlphaHelix","Coil","Strand",
			  "Turn","Bridge","Helix310")

if (argsL$negativeSet != "false"){

	#Creating the training dataset file in case of negative use
	negatif = read.csv(paste(argsL$folderOutput,argsL$negativeSummaryFileName,sep = ""), sep = " ", header = T)
	negatif$correctPocket=rep(FALSE, nrow(negatif))
	negatif$ligandResidueType=rep("NO",nrow(negatif))
	negatif$ligandClass=rep(0,nrow(negatif))
	train = rbind(results[which(results$correctPocket == TRUE),columntosave],results[which(results$correctPocket == FALSE),columntosave], negatif[,columntosave])
	write.table( train, file = paste(argsL$folderOutput,"train.tsv",sep =""),sep = "\t",  row.names = F, dec=".", na = "0",quote =F)
	print( paste ("Positive set =", nrow(results)," negatif set =", nrow(negatif), " Total trainning =", nrow(train)))

}else{

	# Creating the training dataset file without negatives 	
	train = rbind(results[which(results$correctPocket == TRUE),columntosave],results[which(results$correctPocket == FALSE),columntosave])
	write.table( train, file = paste(argsL$folderOutput,"train.tsv",sep =""),sep = "\t",  row.names = F, dec=".", na = "0", quote =F)
}

save.image(paste(argsL$folderOutput,".backup.R", sep = ""))








