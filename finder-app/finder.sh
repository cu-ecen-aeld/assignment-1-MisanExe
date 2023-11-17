#!/bin/bash


#test user input
if [ $# -ne 2 ] 
then
	echo "error. format : ./finder.sh <file path> <search string "
	exit 1
else
	filesdir=$1
	searchstr=$2
fi



#test if file dir is part part of the system
if [ ! -d "$filesdir" ]
then
	echo "diretcory does not exist"
	exit 1
fi



#get number of files in directory
filecount=$(find "$filesdir" -type f | wc -l)


#find string within files
strcount=$(grep -r  "$searchstr" "$filesdir"| wc -l)


echo  The number of files are "$filecount" and the number of matching lines are "$strcount"
exit 0
