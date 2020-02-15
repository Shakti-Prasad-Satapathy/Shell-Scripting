#!/bin/bash -x

read -p "Enter a number between 1 - 7: " x

case $x in 
   1)
      echo One ;;
   2)
   echo Two ;;
   3)
   echo Three ;;
   4)
   echo Four ;;
   5)
   echo Five ;;
   6)
   echo Six ;;
   7)
   echo Seven ;;
	8)
   echo Eight ;;
	9)
   echo Nine ;;
   *)
   echo Sory You Have Entered a wrong choice Please Try again
esac


