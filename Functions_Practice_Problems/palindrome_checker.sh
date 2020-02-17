#!bin/bash -x

read -p "Please Enter a number to check palindrome or not" num
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
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
}
palindrome $num
