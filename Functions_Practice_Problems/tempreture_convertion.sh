#!/bin/bash -x

read -p "Press 1 for convert degF to  degC and  0 for degC to degF  " option
echo NOTE: Temp Tange Should be  between 0 °C / 32 °F  to  100 °C / 212 °F 
c_To_F () {
   read -p "Please Enter The Tempreture in degC  " degc
	if [[ $degc -ge 0 || $degc -lt 101 ]]
	then 
   	result=`expr "(( $degc * 9 / 5 ) + 32)" | bc  `
   	echo Aftre Convertion Tempreture is $result degF
	else
		echo please Enter The Valid Tempreture LOOK OVER NOTE
	fi
}
f_To_C () {
   read -p "Please Enter The Tempreture in degF  " degf 
   if [[ $degc -ge 32 || $degc -lt 213 ]] 
	then
		result=`expr "($degf - 32) * 5/9" | bc `
   	echo Aftre Convertion Tempreture is $result degC
	else
		echo please Enter The Valid Tempreture LOOK OVER NOTE
	fi
}

if [[ $option -eq 1 ]]
then
	f_To_C
elif [[ $option -eq 0 ]]
then
	c_To_F
else
	echo Sorry You Have Entered A Wrong Option Please Try Again
fi


