#!/bin/bash -x
read -p "Enter a number to find its prime factor " num

for((i=2; i <= $num; i++))
do

   if [ $(($num%i)) == 0 ]
	then
		num=$(($num/$i))
		arr[i-1]=$i
	fi
done
echo prime fectors of $num in array = ${arr[@]}
