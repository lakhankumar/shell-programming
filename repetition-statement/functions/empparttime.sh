#!/bin/bash -x

workingDays=5
maxhrs_month=10
isfulltime=1
isparttime=2
emprateperhr=20
totalemphrs=0
totalworkingdays=0

function workinghours() {
	 if [ $1 -eq $isfulltime ]
   then
      emphrs=8
   elif [ $1 -eq $isparttime ]
   then
      emphrs=4
   else
      emphrs=0
   fi
	echo $emphrs
}

while [[ $totalemphrs -lt $maxhrs_month && $totalworkingdays -lt $workingDays ]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3))
	workhours="$( workinghours $empcheck )"
	wage=$(($workhours*$emprateperhr))
	totalemphrs=$(($workhours+$totalemphrs))
done
 totalSalary=$(($emprateperhr*$totalemphrs))
