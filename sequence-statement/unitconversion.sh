#!/bin/bash/ -x

choice= read -p "enter ur conversion unit:" choice
unit=2

if [ $choice -eq 1 ]
then
	inches= read -p "enter your inch:" inches
	feets=$(($inches/12))
	echo "$feets fts"
elif [ $choice -eq 2 ]
then
	length= read -p "enter length of rectangular plot in feet: " length
	width= read -p "enter width of rectangular plot in feet: " width
	lengthmeter=$(($length*381/1250)) 
	breadthmeter=$(($width*381/1250))
	area=$(($lengthmeter*$breadthmeter))
	echo "in meter: $area mts"
	echo "-----25 plots in acres-----"
	areaacres=$(($area*25))	
	echo "$areaacres acres"
else
 echo "wrong choice"
fi
