þecho 1ft = 12 in then 42 in = ? ft  `expr "42 / 12" | bc -l ` ft.
#height=`expr "60 * 3.28084" | bc -l `
#width=`expr "40 * 3.28084" | bc -l `
#echo Rectangular Plot of 60 feet x 40 feet in meters $height X  $width 
echo Rectangular Plot of 60 feet x 40 feet in meters `expr "60 * 3.28084" | bc -l ` x `expr "40 * 3.28084" | bc -l `
echo area of 25 such plots in acres  `expr "(((60 * 40)*25)*0.3048)*0.00024710493865432" | bc -l `



