#!/bin/bash

count=0
while [ $count -lt 10 ]
do
        num=$(($RANDOM%999))
if [ $num -gt 100 ]
then
        array[$count]=$num
        count=$(($count+1))
        continue
fi
done
echo "${array[*]}"



for ((i=0;i<10;i++))
do
for ((j=i+1;j<10;j++))
do
if [ ${array[j]} -gt ${array[i]} ]
then
temp=$[${array[i]}]
array[i]=$[${array[j]}]
array[j]=$[$temp]
fi
done
done
echo "sorted array: ${array[*]}"
echo "Smallest numbers is : ${array[8]} "
echo "Largest numbers is : ${array[1]} "

