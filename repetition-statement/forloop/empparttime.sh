#!/bin/bash -x

workingDays=50
isfulltime=1
isparttime=2
emprateperhr=20
totalSalary=0
for (( day=1; day<=$workingDays; day++ ))
do
	empcheck=$((RANDOM%3))
	if [ $empcheck -eq $isfulltime ]
	then 
		emphrs=8
	elif [ $empcheck -eq $isparttime ]
	then
		emphrs=4
	else
		emphrs=0
	fi
	wage=$(($emphrs*$emprateperhr))
	totalSalary=$(($wage+$totalSalary))
done
