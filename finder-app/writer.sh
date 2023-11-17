#!/bin/bash


if [ $# -ne 2 ] 
then 
	echo " wrong parameters : .\write.sh <file path> <file string> "
	exit 1
else
	writefile=$1
	writestr=$2
fi


#check if directory exists
if  [ -d "$writefile"  ]
then 
	touch "$writefile"
	echo "$writestr" > "$writefile"
else
	dir=$( dirname "$writefile")
	mkdir -p "$dir"
	touch "writefile"
	echo "$writestr" > "$writefile"
fi

#check if file has been created
if [ ! -f "$writefile" ]
then 
	echo "Failed to create writer file"
	exit 1
fi
