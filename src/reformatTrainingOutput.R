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
file=read.csv(file=paste(argsL$filepath, argsL$filename, sep = ""), sep =" ", header = T)


#print(str(file))

# write the line
write.table(file, paste(argsL$filepath, "testing.tsv", sep = ""),  quote = F, row.names = F, sep = "\t" )
#print(output)

#save.image()
