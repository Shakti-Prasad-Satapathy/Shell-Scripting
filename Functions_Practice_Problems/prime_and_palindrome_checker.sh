#!bin/bash -x

read -p "Please Enter a number to check palindrome or not" num

isPrime () {
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
   echo This number not a prime number eather
	exit
  fi
done
palindrome $num
}

palindrome () {
temp=$num
while [ $temp -gt 0 ]
do
    s=$(( $temp % 10 ))
    temp=$(( $temp / 10 ))
    rev=$( echo ${rev}${s} )
done
if [ $num -eq $rev ];
then
    echo Number is both prime and palindrome
else
	echo The number is prime but not palindrome
fi
}
isPrime $num

