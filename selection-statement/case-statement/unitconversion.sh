#!/bin/bash -x
read -p "enter your lenght: " lenght
read -p "enter your choice: " unit
case $unit in
1)
	inch=$(($lenght*12))
	echo $inch "in"
;;
2)
	feet=$(($lenght/12))
	echo $feet "fts"
;;
3)
	meter=$(($length/3.281))
	echo $meter "mts"
;;
4)
	feet=$(($lenght*3.281))
	echo $feet "fts"
esac
