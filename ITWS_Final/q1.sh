#!/bin/bash
level1=$1
level2=$2
l=`df -h | grep dev/sda | wc -l`
rem=`df -h | grep dev/sda | tr "%" " " | tr -s " " | cut -d ' ' -f5`
df -h | grep dev/sda | tr -s " " | cut -d ' ' -f1 > q1file.txt
# i=1
for disk in $rem
do
	name=`cat q2file.txt | head -$i | tail -1`
	# name=`sed -n "$i p" q1file.txt`
	if [ $disk -le $level1 ]
	then
		echo "OK, $name, $disk%"
	elif [ $disk -le $level2 ]
	then
		echo "WARNING, $name, $disk%"
	else
		echo "CRITICAL, $name, $disk%"
	fi
	# i=$((i+1))
done
