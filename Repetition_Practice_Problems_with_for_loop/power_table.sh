#!/bin/bash -x

read -p "Enter the value of n " n

power=1;
echo the power of 2$n
for (( i=0;i<$n;i++ ))
do
	power=$(( $power*2 ))
done
echo $power		
