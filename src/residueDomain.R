#!/usr/bin/env Rscript

# This R script reads a small file, containing all the residue from a pocket.
# Out of this file et compile the stretch of each pocket.


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
#print(paste(" Treating : ", argsL$filepath, argsL$filename, sep = ""))

# read the file
file=read.csv(file=paste(argsL$filepath, argsL$filename, sep = ""), sep =";", header = F, colClasses=c("character","numeric"))

output = c()

for(i in unique(file$V1)){
	ma=(max( file[which(file$V1==i),2]))
    mi=(min( file[which(file$V1==i),2]))
	newline=paste(i,"[",mi,"-",ma,"]", sep = "")
	if(length(output) > 0 ){
		output = paste(output,newline,sep="!")
	}else{
		output=newline
	}
}
# write the line
write.table(output, paste(argsL$filepath, argsL$filename, ".out", sep = ""),  quote = F, row.names = F , col.names = F )
#print(output)

# save.image()
