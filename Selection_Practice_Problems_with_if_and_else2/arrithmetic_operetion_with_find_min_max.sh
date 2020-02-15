#!bin/bash -x
read -p "Enter The First Number a: " a
read -p "Enter The Second Number b: " b
read -p "Enter The Third Number c: " c

result1=$(($a + $b * $c))
echo a+b*c =  $result1
result2=$(($a % $b + $c))
echo a%b+c =  $result2
result3=$(($c + $a / $b))
echo c+a/b =  $result3
result4=$(($a * $b + $c))
echo a*b+c =  $result4


arr=($result1 $result2 $result3 $result4)
key1=${arr[1]}
key2=${arr[1]}
for i in 0 1 2 3  
do
  	if [[ ${arr[i]} -lt  $key1 ]]
	then
		key1=${arr[i]} 
	elif [[ ${arr[i]} -gt $key2 ]]
	then
      key2=${arr[i]} 
   fi
done
echo Smallest Result = $key1
echo Largest Result = $key2
