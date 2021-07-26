#!/bin/bash 

read -p "enter your number: " num
flag=1
for ((i=2; i<=$num; i++ ))   #chckng for factors
do
	fact=$(($num%$i))
	if [ $fact -eq 0 ]
		then
		for((j=2; j<=$i/2; j++))  #chckng for prime
		do
			check=$(($i%$j))
			if [ $check -eq 0 ]
			then
				flag=0
				break
				else 
					flag=1
				fi
		done
		if [ $flag -eq 1 ]
		then
			echo "$i is a prime factor for $num "
		fi
	fi
done

