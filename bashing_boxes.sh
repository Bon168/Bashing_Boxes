#!/bin/bash

array=("ginger" "Pins" "Badge" "Caramel apple" "Misletoe" "Cookie cutters" "soup can" "Mustard" "Tennis racket" "Clock tower")


while true; do


	echo "Welcome user"
echo "You have five different options"
wait 1
echo "option 1 |Print list"
echo "option 2 |Print item at X position in list"
echo "option 3 |Add item to list remove last item from list"
echo "option 4 |remove item - from X position"
echo "option 5 |Exit"

read -p "Choose 1 option from 1 to 5"

printarray() {
	echo "print list"; then
		echo "${array[@]}"
}



Additem() {
read -p "What would you item would you like to add to the list:" answer
local item+=($answer)
}



Removeitem() {
read -p "Which Item would you like to remove from the list" answer1
unset ${array[$index]}
echo ${array[$index]} "The $index has been removed from the list"
}









case $choice for in 
	1) 
	

	done
		;;
	2)
		echo "cookie cutters"
	fi

		;;

    3) echo "sprite"
	fi

        ;;

    4) echo "Removing one from list"; then
    	echo "${array1[@]}"
    fi
    	;;

    5) exit

esac

;;

