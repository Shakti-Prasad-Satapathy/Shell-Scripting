#!bin/bash -x
read -p "Enter 1 for Feet-to-Inch, 2 for Feet-to-Meter, 3 for Inch-to-Feet, 4 for Meter to Feet " option

case "$option" in 
	1)
		read -p "Enter the distance in feet" a
		echo in inch: `expr "$a / 12" | bc -l `
		;;

	2)
      read -p "Enter the distance in feet" a
      echo in inch:`expr "$a * 0.3048" | bc -l `
      ;;

	3)
      read -p "Enter the distance in inch" a
      echo in inch: $(($a * 12))
      ;;

	4)
      read -p "Enter the distance in metre" a
      echo in inch: `expr "$a * 3.28084" | bc -l `
      ;;
	*)
		echo Sorry You Have Entered a wrong option. Please Try  it again
		;;
esac
