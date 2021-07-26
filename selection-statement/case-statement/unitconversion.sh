#!/bin/bash -x

echo "1 to convert Feet to Inch"
echo "2 to convert Feet to Meter"
echo "3 to convert Inch to Feet"
echo "4 to convert Meter to Feet"

read -p "enter your choice: " unit

case $unit in
1)
	read -p "enter FEET value: " length
	inch=$(($length*12))
	echo "$inch in"
;;
2)
	read -p "enter your FEET value: " length
	meter=$[$length*381/1250]
	echo "$meter mts"
;;
3)
	read -p "enter your INCH value: " length
	feet=$(($length/12))
	echo "$feet fts"
;;
4)
	read -p "enter your METER VALUE: " length
	feet=$(($length*82021/25000))
	echo "$feet fts"
;;
esac
