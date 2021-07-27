#!/bin/bash 
 
read -p "enter your number: " num
 
function prime() { 
num=$1
for((i=2; i<=num/2; i++)) do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
r=`palindrome $num`
echo $r
}

function palindrome() {
original=$1
reverse=0
while [ $num -gt 0 ]
do
a=$(($num%10))
num=$((num/10))
reverse=$[(($reverse*10))+$a]
done
echo $reverse
if [ $reverse -eq $original ]
then
echo "your number is palindrome"
prime=`primepalindrome $reverse`
echo $prime
else
echo "your number is not palindrome"
fi
}

function primepalindrome() {
num=$1
for((i=2; i<=num/2; i++)) do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
	else
		echo "$num is a prime palindrome number"
	break
  fi
done
}

prime $num
