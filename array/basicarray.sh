#!/bin/bash -x

counter=0
fruits[((counter++))]="mango"
fruits[((counter++))]="orange"
fruits[((counter++))]="grapes"
names=( abc def ghi jkl mno )
echo ${fruits[@]}
echo ${names[*]}
