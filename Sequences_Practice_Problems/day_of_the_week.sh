#!bin/bash -x
read -p "Enter the day number: " d
read -p "Enter the month number: " m
read -p "Enter the year: " y

yy=$(($y -(14 - $m) / 12))
x=$(($yy + $yy/4 - $yy/100 + $yy/400))
mm=$(($m + 12 * ((14 - $m) / 12) - 2))
dd=$((($d + x + 31*$mm / 12) % 7))
arr=(sunday monday tuesday wednesday thursday friday satarday)
echo ${arr[$dd]}

