#!/bin/bash

flag=1
for num in `seq 1 10`
do
   for((i=2; i<=num/2; i++))
   do
      if [ $((num%i)) -eq 0 ]
      then
         echo "$num is not a prime number."
         flag=0
         break
      else
         flag=1
      fi
      done
      if [ $flag -eq 1 ]
      then
         echo "$num prime number"
      fi
done

