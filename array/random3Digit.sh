#!/bin/bash -x

read -p "enter no.of random number: " maxcount
count=0
while [ $count -lt $maxcount ]
do 
	array[$count]=$(($RANDOM%999))
	count=$(($count+1))
done
echo "${array[*]}"
