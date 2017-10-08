#!/bin/bash

echo "Enter your name"
read -r name

echo "Enter your birth date in this format: DD-MM-YYYY"
read dob
day=`echo $dob | cut -d "-" -f1`
month=`echo $dob | cut -d "-" -f2`
year=`echo $dob | cut -d "-" -f3`

today=$(date +%d-%m-%Y)
d=`echo $today | cut -d "-" -f1`
m=`echo $today | cut -d "-" -f2`
y=`echo $today | cut -d "-" -f3`

if [[ $day == $d && $month == $m ]]
then
	age=$((y-year))
	echo "Happy Birthday, $name. You are $age years old today!"
fi	
