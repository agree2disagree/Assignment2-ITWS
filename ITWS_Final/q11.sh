#!/bin/bash

for((n=1; n<=10; n++))
do
	echo `expr $((n*n))`
done

echo

for((n=1; n<=10; n++))
do
	pow=1
	for((k=1; k<=$n; k++))
	do
		pow=$((pow*n))
	done
	echo $pow
done

echo

fib1=0
fib2=1
fib3=$((fib1+fib2))
while [ fib3 -le 100 ]
do
	if [ $((fib3%2)) -eq 1 ]
	then
		echo $fib3
	fi
	fib1=$fib2
	fib2=$fib3
	fib3=$((fib1+fib2))
done
