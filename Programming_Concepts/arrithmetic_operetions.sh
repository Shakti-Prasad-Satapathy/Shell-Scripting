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



