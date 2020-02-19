#!/bin/bash -x
x=0
y=0

read -p "Enter 1st co-ordinate of the ppoint: " x1
read -p "Enter 2nd co-ordinate of the ppoint: " y1

dis=$(( ( ($x-$x1) * ($x-$x1) ) + ( ($y-$y1) + ($y-$y1) ) ))
echo distancebetween "(" $x1 , $y1 ")", "(" $x , $y ")" is : $dis
