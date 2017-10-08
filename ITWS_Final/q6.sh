#!/bin/bash
echo "Please enter you monthly salary (in rupees and paise)"
read salary
r=$((`echo $salary | cut -d "." -f1`))
p=$((`echo $salary | cut -d "." -f2`))
digit=$((`echo $p | wc -c`-1))
pow=$((10**$digit))
total=$(((r*$pow)+$p))
total=$(($total*12))
check=$((300000*$pow))
if [[ $total -le $check ]]
then
	echo "NO TAX PAYMENT REQUIRED"
else
	tax=$(($total*3))
	pow=$(($pow*10))
	dec=$(($tax%$pow))
	tax=$(($tax/$pow))
        printf %.4f "TAX PAYMENT REQUIRED: Rs. $tax.$dec"
fi
