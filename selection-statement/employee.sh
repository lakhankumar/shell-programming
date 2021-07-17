#!/bin/bash -x

empcheck=$((RANDOM%2))
if [ $empcheck -eq 1 ]
then
	echo employee is present
else
	echo employee is absent
fi
