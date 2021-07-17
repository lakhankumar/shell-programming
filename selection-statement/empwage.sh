#!/bin/bash -x

empcheck=$((RANDOM%2))
if [ $empcheck -eq 1 ]
then
	echo employee is present
	emprateperhr=20
	emphrs=8
	wage=$(($emprateperhr*$emphrs))		
else
	echo employee is absent
	each wage=0
fi
