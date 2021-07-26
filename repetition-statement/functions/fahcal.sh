#!/bin/bash -x

function defF() {
celsius=$1
fah=$[$((celsius * 9/5)) + 32]
echo $fah
}

function defC() {
fah=$1
cel=$[$(($fah-32)) * 5/9]
echo $cel
} 

read -p "enter your choice: " n
case $n in
1)
defF $1
;;
2)
defC $1
;;
esac
