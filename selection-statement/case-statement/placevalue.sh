#!/bin/bash -x

read -p "Enter your number: " num
case $num in
1)
	echo "unit"
;;
10)
	echo "ten"
;;
100)
	echo "hundred"
;;
1000)
	echo "thousand"
;;
esac 
