#!/bin/bash -x

A=$((RANDOM%99))
B=$((RANDOM%99))
C=$((RANDOM%99))
D=$((RANDOM%99))
E=$((RANDOM%99))
sum=$(($A+$B+$C+$D+$E))
echo $sum
avg=$(($sum/5))
echo $avg
