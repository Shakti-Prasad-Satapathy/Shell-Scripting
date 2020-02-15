#!bin/bash -x
read -p "Enter the day number: " d
read -p "Enter the month number: " m

if [[ $m -gt 2 && $m -lt 7 ]]
then
	if [[ $m == 3 && $d -gt 20 ]]
	then 
		echo TRUE
	elif [[ $m == 6 && $d -lt 20 ]]
	then
		echo TRUE
	elif [[ $m -gt 4 && $m -lt 6 ]]
	then
		echo TRUE
	else
		echo FALSE
	fi
elif [[ $m -lt 0 || $m -gt 12 || $d -lt 0 || $d -gt 31 ]]
then
	echo FALSE 
else
	echo FALSE
fi
