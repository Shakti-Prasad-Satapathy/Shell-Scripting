#!/bin/bash -x
x=$(( (RANDOM % 100) +1 ))
if [[ $x -lt 50 ]]
then
	echo TAILS
else
	echo Heads
fi
