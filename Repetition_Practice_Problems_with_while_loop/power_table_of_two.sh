#!/bin/bash -x
read -p "Enter the value of "n" " n
result=1
count=1
while [[ $count -lt n+1 && $result -lt 256 ]]
do
	result=$(($result*2))
	echo 2^$count = $result
	((count++))
done
