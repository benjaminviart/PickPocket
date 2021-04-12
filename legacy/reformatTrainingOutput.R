#!/usr/bin/env Rscript

# Ben Viart 01 2020

# This R script reformat the output file from the training format to the testing format.
# This script is called when user just want a testing file out of PDB structures.


#print("Rscript to extract Pocket Domain starting")
# Collect arguments
args <- commandArgs(TRUE)
 
## Default setting when no arguments passed
if(length(args) < 1) {
  args <- c("--help")
}
 
## Help section
if("--help" %in% args) {
  cat(c("      Rscript of residue file reading to extract domains  : ",
	"   Arguments:  ",
	"--filepath= path of file to treat",
	"--filename= name of the file to treat",
	"   Example:Rscript ... " ))
  q(save="no", status = 1 )
}
 
## Parse arguments (we expect the form --arg=value)
parseArgs <- function(x) strsplit(sub("^--", "", x), "=")
argsDF <- as.data.frame(do.call("rbind", parseArgs(args)))
argsL <- as.list(as.character(argsDF$V2))
names(argsL) <- argsDF$V1
#print(argsL)

## NULL argument testing
if(is.null(argsL$filepath)) {
	print("File Path Argument is Null. ")
	q(save = "no" , status = 1 )
}
 
if(is.null(argsL$filename)) {
 	print("File name Argument is Null. ")
	q(save = "no", status = 1 )
}
########################################################
	# Treating the file here
print(paste(" Treating : ", argsL$filepath, argsL$filename, sep = ""))

# read the file
file=read.csv(file=paste(argsL$filepath, argsL$filename, sep = ""), sep ="\t", header = T)


#columntosave = c("PDB","PocketNumber","PocketPosition","correctPocket","ligandResidueType","ligandClass","Pocket_Score","Drug_Score",
#			 "Number_of_V._Vertices","Mean_alpha.sphere_radius","Mean_alpha.sphere_SA","Mean_B.factor","Hydrophobicity_Score",
#			  "Polarity_Score","Volume_Score","Real_volume","Charge_Score","Local_hydrophobic_density_Score",
#			  "Number_of_apolar_alpha_sphere","Proportion_of_apolar_alpha_sphere","SASA","AlphaHelix","Coil","Strand",
#               "Turn","Bridge","Helix310")
#
#print(str(file))

# write the line
write.table(file, paste(argsL$filepath, "testing.tsv", sep = ""),  sep = "\t",  row.names = F, dec=".", na = "0",quote =F )
#print(output)
save.image(paste(argsL$filepath,".backup.R", sep = ""))

