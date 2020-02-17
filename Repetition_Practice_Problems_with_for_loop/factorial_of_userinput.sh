#!/bin/bash -x
read -p "Enter a number to find its factorial " num
sum=1
for((i=2; i <= $num; i++))
do
   sum=$((sum*$i))
done
echo Factorial of $num is: $sum
