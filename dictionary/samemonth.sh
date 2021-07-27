#!/bin/bash

declare -A sameMonth

div=$(( 12-1+1 ))
selectMonth=$(( 1+($RANDOM%$div) ))

case $selectMonth in
	1)
	month="January"
	;;
	2)
	month="February"
	;;
	3)
	month="March"
	;;
	4)
	month="April"
	;;
	5)
	month="May"
	;;
	6)
	month="June"
	;;
	7)
	month="July"
	;;
	8)
	month="August"
	;;
	9)
	month="September"
	;;
	10)
	month="October"
	;;
	11)
	month="November"
	;;
	12)
	month="December"
	;;
esac
echo "same month birthdays on $month are: "
j=0
for (( i=1;i<=50;i=$i+1 ))
do
	div1=$(( 12-1+1 ))
	birthMonth=$(( 1+($RANDOM%$div1) ))

	if (( $birthMonth==$selectMonth ))
	then
		over1=1
		while (( $over1!=0 ))
		do
			sameMonth[$j]=$i"th peron"
			j=$(( $j+1 ))
			over1=0
		done
	fi
done
echo ${sameMonth[@]}
