#!/bin/bash -x

read -p "Enter the Year: " y

if [[ `expr "$y % 4" | bc` -eq 0 && `expr "$y % 100" | bc` != 0 || `expr "$y % 400" | bc` -eq 0 ]]
then
   echo Yes...  $y is a leap year
else
   echo Not A Leap Year
fi
