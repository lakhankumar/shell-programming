#!/bin/bash -x

die1=$(( ( RANDOM % 6 )  + 1 ))
die2=$(( ( RANDOM % 6 )  + 1 ))
add=$(($die1+$die2))
echo $add
