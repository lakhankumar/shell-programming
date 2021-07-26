#!/bin/bash

startingNum=0
endingNum=100
while [ $startingNum -lt $endingNum ]
do
	total=$(($endingNum+$startingNum))
	midValue=$[$total/2]
	echo "your number is between $startingNum to $endingNum"
	echo "$midValue if ur number?"
	echo "enter 1 for YES"
	echo "enter 2 for NO"
	echo "enter 1 for YES"
	echo "ender 2 for NO"
	read choice
	if [ $choice -eq 1 ]
	then
		echo "i got your number: $midValue"
		break
	elif [ $choice -eq 2 ]
	then
		echo "you number less than $midValue or greater" 
		echo "enter 1 for Lesser"
		echo "enter 2 for Greater" 
		read choice
		if [ $choice -eq 1 ] 
		then
			endingNum=$[$midValue]
			continue
		elif [ $choice -eq 2 ]
		then
			startingNum=$[$midValue+1]
			continue
		fi
	fi
done
