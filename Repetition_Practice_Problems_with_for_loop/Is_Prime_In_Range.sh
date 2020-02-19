  GNU nano 4.3               Is_Prime.sh               Modified  
#!/bin/bash -x
read -p "Enter starting range for prime number checking " num1
read -p "Enter ending range for prime number checking " num2
numx=$((($num1+($num2-$num1))-1))	# This contain the middle number of the range
for((x = $num1; x <= $numx; x++))
do
	for((i=2; i <= $(($x/2)); i++))
	do
		if [ $(($x%i)) -eq 0 ]
  		then
			flag=1
			break
  		fi
	done
	if [ $(($flag == 1)) ]
	then
		echo $x is not a prime number.
	else
		echo $x is a prime number. 
	fi
done
