#!/bin/bash -x

for i in 1 2 3 4 5
do
	x=$(( RANDOM % (100 - 10 + 1 ) +10 ))
	sum=$(($sum + $x))
done
echo sum of 5, 2-digit numbers is:- $sum
echo average of those numbers is:- $(($sum / 5))

