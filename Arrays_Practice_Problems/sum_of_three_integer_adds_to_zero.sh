#!/bin/bash -x
intarr=(-1 -2 3 5 -3 -4)
for (( i = 0; i < ${#intarr[@]}; i++ ))
do
	for (( j = 0; j < ${#intarr[@]}; j++ ))
	do
		for (( k = 0; k < ${#intarr[@]}; k++ ))
		do
      	if [[ ${intarr[i]} != ${intarr[j]} && ${intarr[i]} != ${intarr[k]} && ${intarr[k]} != ${intarr[j]} ]]
			then
      		sum=$(( ${intarr[i]} + ${intarr[j]} + ${intarr[k]} ))
        		if [[ $sum == 0 ]]
				then
         		echo the 3 numbers are ${intarr[i]}  ${intarr[j]}  ${intarr[k]}
				fi
			fi
		done
	done
done
