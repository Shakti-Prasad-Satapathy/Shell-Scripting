
read -p "Please Enter The Value Of a" A
read -p "Please Enter The Value Of b" B
read -p "Please Enter The Value Of c" C

if [ $A = 0 ]; then
    echo "Not a quadratic equation.";
    exit 0;
fi

D=$(( ($B)*($B)-4*($A)*($C) ));
#integer math only!
if [ $D = 0 ]; then
    echo -n "x = "
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    exit 0;
fi
echo $D
if [ $D -gt 0 ]; then
    echo -n "x1 = "
    echo -e "scale=3\n0.5*(-($B)+sqrt($D))/($A)" | bc
    echo -n "x2 = "
    echo -e "scale=3\n0.5*(-($B)-sqrt($D))/($A)" | bc
else
    echo -n "x1 = ("
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    echo -n ", "
    echo -e "scale=3\n0.5*sqrt(-($D))/($A)" | bc
    echo ")"
    echo -n "x2 = ("
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    echo -n ", "
    echo -e "scale=3\n-0.5*sqrt(-($D))/($A)" | bc
    echo ")"
fi#!/bin/bash -x

read -p "Please Enter The Value Of a" a
read -p "Please Enter The Value Of b" b
read -p "Please Enter The Value Of c" c
if [[ a < b && a=b || a>b ]]
then
	delta=$(( (b * b) - (4 * a * c) ))
	delta=$(( $delta*-1 ))
	Root_1_of_x=$(( `scale "(-$b + sqrt($delta))/(2*$a)" | bc -l ` ))
	Root_2_of_x=$(( `scale "(-$b - sqrt($delta))/(2*$a)" | bc -l ` ))
fi
echo Root_1_of_x is $Root_1_of_x and  Root_2_of_x is $Root_2_of_x
