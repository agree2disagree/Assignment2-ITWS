#!/bin/bash
file=$1
if [ "$#" -ne 1 ]
then
	echo "Only a single valid file name is to be entered as an argument upon execution of the script." 
	echo "Additional file names will lead to invalid input."
elif [ ! -e $file ] 
then
	echo "File does not exist."
elif [ -f $file ]
then
	chmod u+x $file
	echo "File permission changed. User now has permission to execute $file."
else
	echo "File is not a regular file. No permissions changed."
fi
