#!/bin/bash
a=( "$@" )
n=$#
for(( i=0; i<n-1; i++))
do
	min=$i
	for(( j=i+1; j<n; j++ ))
	do
		if [[ ${a[$j]} -lt ${a[$min]} ]]
		then
			min=$j
		fi
	done
	temp=${a[$i]}
	a[$i]=${a[$min]}
	a[$min]=$temp
done
echo "${a[@]}"
