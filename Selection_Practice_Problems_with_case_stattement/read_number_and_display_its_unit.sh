#!/bin/bash -x

read -p "Enter a number between 1 - 7: " x

case "${#n}" in 
	1)
   echo One ;;
	2)
   echo Ten ;;
	3)
   echo Hundred ;;
	4)
   echo Thousend ;;
	5)
   echo TenThousend ;;
	6)
   echo Lakh ;;
	7)
   echo TenLakh ;;
	8)
   echo Crore ;;
	9)
   echo TenCrore ;;
	*)
   echo Sory no result found... Please Try again
esac



