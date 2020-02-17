#!/bin/bash -x

while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	x=$(( (RANDOM % 10) +1 ))
	if [[ $x -le 5 ]]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))
	fi
	count=$(($count+1))

done
echo $heads heads comes after  $count number of flip
echo $tails tails comes after  $count number of flip
