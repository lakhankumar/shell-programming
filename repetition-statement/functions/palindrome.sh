#!/bin/bash -x

read -p "Enter your number: " n
function palindrome() {
original=$n
reverse=0
while [ $n -gt 0 ]
do
a=$(($n%10))
n=$((n/10))
reverse=$[(($reverse*10))+$a]
done
echo $reverse
if [ $reverse -eq $original ]
then 
echo "your number is palindrome"
else
echo "your number is not palindrome"
fi
}
r=`palindrome $n`
echo $r
