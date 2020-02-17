#!/bin/bash -x
echo Think a number between 1 and 100
#read -p "Enter the value of "n" " n
min=0
max=100
#mid=$((($max-$min)/2))
flag=0
while [[ flag -lt 1 ]]
do
	mid=$((($max+$min)/2))
	echo press 1  if your number is less then or equals to $(($mid)) else press 0
   read -p "" option
	

	if [ $option -eq 1 ]
	then
		min=$min
		max=$mid
		#echo press 1  if your number is less then $(($temp/2))else press 0
	elif [ $option -eq 0 ]
	then
		min=$mid
		max=$max
		#echo press 1  if your number is less then $(($temp/2))else press 0
	else
		echo Sorry You have Entered a wrong choice please try again	
	fi
	if [[ $(( $max - $min)) -eq 1 ]]
	then
		echo Your number is $max
		flag=1
	fi
done


