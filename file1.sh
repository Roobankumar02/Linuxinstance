#!/bin/bash

echo "Salary"
read sal
tax=0

if [ $sal -lt 20000 ]
then 
	echo "No tax to be paid"
elif [ $sal -gt 20000 ] && [ $sal -le 40000 ]
then
	tax=$(((5*$sal)/100))
	amount=$tax
	echo "You want to pay five percent tax is $amount"
elif [ $sal -gt 40000 ]
then 
	tax=$(((10*$sal)/100))
	amount=$tax
	echo " 10percent tax $amount "
elif [ $sal -eq 10000 ]
then
	tax=$(((2*$sal)/100))
	amount=$tax
else
	echo " Something is wrong "
fi
