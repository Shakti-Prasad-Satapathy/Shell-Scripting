#!/bin/bash -x

read -p "Enter the value of n " n
sum=0
echo the power table of 2 to $n
for (( i=1;i<$n+1;i++ ))
do
   sum=`expr "sum+(1/$i)" | bc -l`
done
echo $sum

