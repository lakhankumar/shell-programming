#!/bin/bash/ -x

choice= read -p "enter ur conversion unit:" choice
if [ $choice -eq 1 ]
then
	inches= read -p "enter you inch:" inches
	answer=$(($inches/12))
	echo $answer
elif [ $choice -eq 2 ]
then
	length= read -p "enter length of rectangular plot in feet: " length
	width= read -p "enter width of rectangular plot in feet: " width
	area= $(($length*$width))
	echo $area
	meters= $(($area*0.3048))
	echo "in meter: $meters"
	
else
 echo "0"
fi
