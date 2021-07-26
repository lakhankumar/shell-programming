#!/bin/bash -x

n=$1
for((i=1; i<=n; i++))
do
harmonic=`echo 1/$i`
echo $harmonic
done
