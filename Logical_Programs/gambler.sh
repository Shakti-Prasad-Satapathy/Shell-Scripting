#!/bin/bash -x
read -p "Please Enter The amount you want to play " stake
read -p "Please Enter The amount you want to play " goal
read -p "Please Enter The amount you want to play " trails

wins=0
loose=0

for (( i = 0; i < trails; i++ ))
do
	cash=$stake
	while [[ $cash -gt 0 && $cash -lt $goal ]]	
	do

		if [[ $((RANDOM % 2)) -eq  1 ]]
		then 
			cash=$(( $cash + 1 ))
		else
			cash=$(( $cash - 1 ))
		fi

		if [[ $cash -eq $goal ]]
		then
			wins=$(( $wins + 1 ))
		fi
		if [[ $cash -eq 0 ]]
		then
			loose=$(( $loose + 1 ))
		fi
	done
done

echo wins is  $wins
echo loose is  $loose

per_o=`expr "$wins/$trails" | bc -l` 
per_l=`expr "$loose/$trails" | bc -l`

perown=`expr "$per_o * 100" | bc -l `
perloose=`expr "$per_l * 100" | bc -l ` 

echo % of game own is  $perown %
echo % of game loose is  $perloose %
