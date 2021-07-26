#!/bin/bash -x

won=0
loss=0
amount=100
times=0
while [ $amount -le 200 ] || [ $amount -le 0 ]
do
	bet=$(($RANDOM%2))
	if [ $bet -eq 1 ]
	then
		won=$(($won+1))
		amount=$(($amount+1))
		times=$(($times+1))
	else
		loss=$(($loss+1))		
		amount=$(($amount-1))
		times=$(($times+1))
	fi
done
echo "won= $won"
echo "loss= $loss"
echo "times= $times"
