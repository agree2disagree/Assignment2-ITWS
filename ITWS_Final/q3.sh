#!/bin/bash
text=$1
check=0
for next in `find -iname "*.txt"`
do
	num=$((`cat $next | grep $text | wc -l`))
	if [[ $num -gt 0 ]]
	then
		check=$((check+1))
		echo "$num lines in $next"
	fi
done
if [[ $check -ne 0 ]]
then
	exit 1
fi
