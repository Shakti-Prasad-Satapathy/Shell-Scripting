#!/bin/bash -x
x=$(( (RANDOM % 6) +1 ))
y=$(((RANDOM % 6)+1))
echo addition of 2 random dice number is: $(($x+$y)) 

