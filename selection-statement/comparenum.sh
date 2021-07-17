#!/bin/bash -x

read -p "enter ur 1st number: " num1
read -p "enter ur 2nd number: " num2
if [ $num1 -gt $num2 ]
then
	echo $num1 " is greater than " $num2
elif [ $num1 -eq $num2 ]
then
	echo $num1 " is equal to " $num2
else
	echo $num2 " is greater than " $num1
fi
