#!/bin/bash -x

for (( k = 1 ; k <= 10 ; k++ ))
do
	x=$(( RANDOM % (1000 - 100 + 1 ) +100 ))
	echo 3 digit random number no $i is: $x
	arr[k]=$x
done
echo ""
echo The array is:[ ${arr[@]} ]
echo "" 
#key=${arr[1]}

largest=${arr[1]}
smallest=${arr[1]}


for (( i=1 ; i < 11; i++))
do
	
	if [[ ${arr[i]} -lt  $largest ]]
	then
		largest=${arr[i]} 
	elif [[ ${arr[i]} -gt $smallest ]]
	then
      smallest=${arr[i]} 
   fi
done

echo The Smallest number among them is $smallest
echo The largest number anong them is $largest

arr[1]=$smallest
second_smallest=${arr[2]}
for (( i=2 ; i < 11; i++))
do
   if [[ ${arr[i]} -gt $second_smallest ]]
   then
      second_smallest=${arr[i]} 
   fi
done

arr[1]=$largest
second_largest=${arr[2]}
for (( i=2 ; i < 11; i++))
do
   if [[ ${arr[i]} -lt  $second_largest ]]
   then
      second_largest=${arr[i]} 
   fi
done

echo second largent number is $second_largest
echo second smallest number is $second_smallest
