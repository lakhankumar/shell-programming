#!/bin/bash 

n=$1
base=2
power=1
i=1
while [ $power -lt 256 ]
	do
		while [ $i -lt $n ]
		do
			power=$(($base*$power))
			i=$(($i+1))
		done
break
done
echo $power
