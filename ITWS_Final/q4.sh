#!/bin/bash

read file
i=1
sed '/^$/d' $file | while read l
do
	echo "$i) $l"
	i=$((i+1))
done
