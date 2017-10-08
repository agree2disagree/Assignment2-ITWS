#!/bin/bash
echo "Please enter you monthly salary (in rupees and paise)"
read salary
salary=$(echo $salary 12 | awk '{printf "%.4f\n",$1*$2}')
# if [ $salary == "300000" -o $salary < "300000" ]
cmp=`echo "300000" > "$salary" | bc`
# if [[ "300000" > "$salary" ]]
if [[ $cmp -eq 0 ]]
then
	echo "NO TAX PAYMENT REQUIRED"
else
	tax=$(echo $salary 0.3 | awk '{printf "%.4f\n",$1*$2}')
	echo "TAX PAYMENT REQUIRED: Rs. $tax"
fi
