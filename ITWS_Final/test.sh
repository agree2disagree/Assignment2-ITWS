#!/bin/bash

num=`df -h | grep dev/sda | wc -l` 

	space=`df -h | grep dev/sda |tr "%" " " | tr -s " " | cut -d " " -f 5`
	df -h | grep dev/sda | tr -s " " | cut -d " " -f 1 > disk.txt	
	cat disk.txt	
	cout=0
	for b in $space
	do
		cout=$((cout+1))
		disk=`sed -n "$cout p" disk.txt`
		if [ "$b" -gt "$2" ] 
		then
		 	echo "CRITICAL, $disk, $b%"
		elif [ "$b" -gt "$1" ]
		then
			echo "WARNING, $disk, $b%"
		else
			echo "OK, $disk, $b%"
		fi	       
	done
