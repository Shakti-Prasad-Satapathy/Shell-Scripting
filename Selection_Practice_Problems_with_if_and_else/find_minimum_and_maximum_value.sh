#!/bin/bash -x
for i in 1 2 3 4 5
do
	x=$(( RANDOM % (100 - 10 + 1 ) +100 ))
	arr[i]=$x
done

echo 5 , 3 digit numbers are ${arr[*]}

key1=${arr[1]}
key2=${arr[1]}
for i in 1 2 3 4 5
do
  	if [[ ${arr[i]} -lt  $key1 ]]
	then
		key1=${arr[i]} 
	elif [[ ${arr[i]} -gt $key2 ]]
	then
      key2=${arr[i]} 
   fi
done

echo The Smallest number anong them is $key2
echo The largest number anong them is $key1

