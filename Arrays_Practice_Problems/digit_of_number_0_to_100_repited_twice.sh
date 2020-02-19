#!/bin/bash -x

for (( count = 10 ; count < 100; count++ ))
do
	num=$count
	number=$num
	reverse=0
	while [ $num -gt 0 ]
	do
		a=$(( $num % 10 ))
		num=$(( $num / 10 ))
		reverse=$(( ($reverse * 10) + $a ))
	done
	if [ $number -eq $reverse ]
	then
		arr[$((count-9))]=$number
   	echo $number "Number is palindrome"
	fi
done

echo ${arr[*]}
