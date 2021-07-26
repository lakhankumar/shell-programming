#!/bin/bash -x

n=$1
num=2
answer=1
for((i=1; i<=n; i++))
do
	answer=`expr $answer \* $num`
	echo $answer
done
