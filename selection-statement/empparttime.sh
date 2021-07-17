#!/bin/bash -x
empcheck=$((RANDOM%3))
isfulltime=1
isparttime=2
emprateperhr=20
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
