#!/bin/bash -x
counter=0
read -p "Enter your inputs: " A B C
array[((counter++))]=$A
array[((counter++))]=$B
array[((counter++))]=$C

echo "Array :${array[@]} "

sum1=$[${array[0]}+${array[1]}+${array[2]}]
sum2=$[${array[0]}+${array[1]}-${array[2]}]
sum3=$[${array[0]}-${array[1]}+${array[2]}]
sum4=$[${array[0]}-${array[1]}-${array[2]}]

if [ $sum1 -eq 0 ]
then
	echo "sum of three interger adds to zero: $A + $B + $C"
elif [ $sum2 -eq 0 ]
then
   echo "sum of three interger adds to zero: $A + $B - $C"
elif [ $sum3 -eq 0 ]
then
   echo "sum of three interger adds to zero: $A - $B + $C"
elif [ $sum4 -eq 0 ]
then
   echo "sum of three interger adds to zero: $A - $B - $C"
fi
