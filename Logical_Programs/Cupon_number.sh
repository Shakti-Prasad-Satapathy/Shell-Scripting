#!/bin/bash -x
read -p "Please enter how much cupon number you want limit upto 100:  " total_cupon
#arr=()
#echo ${#arr[@]}bbbbbbbbbbbb

contains() {
	test=0
	for ((i = 1; i < $(( ${#arr[@]} + 1 )); i++)) 
	do
		if [[ ${arr[i]} -eq $cupon ]]
		then
			test=1
		fi
	done
}

while [[ ${#arr[@]} -lt $total_cupon ]]
do
	cupon=$(((RANDOM % 100)+1))

	contains $cupon

	if [[ $test != 1 ]]
	then
		arrlength=${#arr[@]}
		arr[$(( $arrlength +1 ))]=$cupon
	fi
done

echo Your Cupons are ${arr[@]}
echo ${arr[3]}
echo ${arr[1]}
echo ${arr[2]}
echo ${arr[0]}
echo ${arr[4]}
echo ${arr[5]}

echo $(( "${arr[5]}" + "${arr[5]}" ))
