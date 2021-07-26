#!/bin/bash 

count=0
read -p "starting value: " start
read -p "ending value: " end

for num in `seq $start $end`
do 
array[$count]=$num
count=$(($count+1))
done
echo "${array[*]}"

for ((i=0; i<=$end; i++))
do
 ans=$((${array[i]}%11))
	while [ $ans -eq 0 ]
	do
	echo "${array[i]} is repeated"
	break
	done
done
