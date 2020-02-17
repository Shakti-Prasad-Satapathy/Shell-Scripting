#!bin/bash -x
read -p "Enter the day number: " d
read -p "Enter the month number: " m

if [[ $m -gt 2 && $m -lt 7 && $d -gt 1]]
then
	if [[ $m == 3 && $d -gt 20 && $d -lt 32 ]]
	then 
		echo TRUE
	fi	

	if [[ $m == 6 && $d -lt 20 ]]
	then
		echo TRUE
	fi

	if [[ $m -eq 4 && $d -lt 31]]
	then
		echo TRUE
	fi

	if [[ $m -gt 4 && $m -lt 6 ]]
	then
		echo TRUE
	fi
fi
if [[ $m -lt 0 || $m -gt 12 || $d -lt 0 || $d -gt 31 ]]
then
	echo FALSE 
fi
