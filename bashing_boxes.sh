#!/bin/bash

array=("ginger" "Pins" "Badge" "Caramel apple" "Misletoe" "Cookie cutters" "soup can" "Mustard" "Tennis racket" "Clock tower")


while true; do


	echo "Welcome user"
echo "You have five different options"
echo "option 1 |Print list"
echo "option 2 |Print item at X position in list"
echo "option 3 |Add item to list"
echo "option 4 |Add item to list remove last item from list"
echo "option 5 |remove item - from X position"
echo "option 6 |Exit"

read -p "Choose 1 option from 1 to 5" choice

printarray() {
	echo "print list"
		echo "${array[@]}"
}



Additem() {
read -p "What would you item would you like to add to the list:" answer
array+=($answer)
}


printitemfromlist() {
read -p "What would you like to print from the list ${array[@]}" answer3
echo "$answer3"

}


Additem_Remove() {
echo "When you add a item to the list, the last item will be removed"
read -p "what would you like to add" answer4
array+=($answer4)
unset ${array[index-5]}
echo ${array[index10]} "clock tower has been deleted and $answer4 has been added"
}



Removeitem() {
read -p "Which Item would you like to remove from the list" index 
unset ${array[$index]}
echo ${array[$index]} "The $index has been removed from the list"
}

Leavegame() {
	echo "leaving the game"; then
		exit
}









case $choice in
	1) printarray()
		;;
	2) printitemfromlist()
		;;

    3) Additem()
        ;;

    4) Additem_Remove()
    	;;

    5) Removeitem()
       ;;
    6) Leavegame()
       ;;

esac

done