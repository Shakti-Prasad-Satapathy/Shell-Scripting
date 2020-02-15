#!bin/bash -x
read -p "Enter the unit number such as: 1, 10, 100, 1000,...: " n

if [[ $n -eq 1 || `expr "$n % 10" | bc` -eq 0 ]]
then
	if [[ "${#n}" -eq 2 ]]
	then
		echo One
	elif [[ "${#n}" -eq 2 ]]
	then 
		echo Ten
	elif [[ "${#n}" -eq 3 ]]
   then 
      echo Hundred
	elif [[ "${#n}" -eq 4 ]]
   then 
      echo Thousend
	elif [[ "${#n}" -eq 5 ]]
   then 
      echo TenThousend
	elif [[ "${#n}" -eq 6 ]]
   then 
      echo Lakh
	elif [[ "${#n}" -eq 7 ]]
   then 
      echo TenLakh
	elif [[ "${#n}" -eq 8 ]]
   then 
      echo Crore
	elif [[ "${#n}" -eq 9 ]]
   then 
      echo TenCrore
	else
		echo TRY AN ANOTHER NUMBER PLEASE
	fi
fi
