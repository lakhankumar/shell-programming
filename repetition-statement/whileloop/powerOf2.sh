#!/bin/bash 

n=$1
base=2
power=1
i=1
while [ $power -lt 256 ] && [ $i -le $n ]
do
	power=$(($base*$power))
	i=$(($i+1))
echo $power
done
