cash=100

while [[ $cash -gt 0 && $cash -lt 200 ]]	#loop untill the user win / loose
do
	x=$(((RANDOM % 10 ) +1 ))
	if [[ $x -lt 6 ]]
	then
     	cash=$(($cash + 1))
		wins=$(($wins + 1))
  	else
     	cash=$(($cash - 1))
		loose=$(($loose + 1))
  	fi
done

echo wins = $wins $cash
echo loose = $loose $cash
