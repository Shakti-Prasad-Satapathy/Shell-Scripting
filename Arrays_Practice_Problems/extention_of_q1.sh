c#!/bin/bash -x

for (( k = 1 ; k <= 10 ; k++ ))
do
   x=$(( RANDOM % (1000 - 100 + 1 ) +100 ))
   echo 3 digit random number no $i is: $x
   arr[k]=$x
done
echo ""
echo The array is:[ ${arr[@]} ]
echo "" 
for (( i = 1; i < 11; i++))
do
   for (( j = i + 1; j < 10; j++)) 
   do
      if [[ ${arr[$i]} > ${arr[$j]} ]] 
      then
         temp=${arr[i]}
         arr[i]=${arr[j]};
         arr[j]=$temp;
      fi
   done
done


echo second largent number is ${arr[9]}
echo second smallest number is  ${arr[2]}

