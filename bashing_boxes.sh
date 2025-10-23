#!/bin/bash

array=("ginger" "Pins" "Badge" "Caramel apple" "Misletoe" "Cookie cutters" "soup can" "Mustard" "Tennis racket" "Clock tower")


while true; do


	echo " Welcome user

	 You have five different options
	 ==========
	 option 1 |Print list
	 option 2 |Print item at X position in list
	 option 3 |Add item to list
	 option 4 |remove last item from list
	 option 5 |remove item - from X position
	 option 6 |Exit

	"

	read -p "Choose 1 option from 1 to 6:" choice

	printarray() {
		echo "print list"
			echo "${array[@]}"
	}



	Additem() {
	read -p "What would you item would you like to add to the list:" answer
	array+=($answer)
	}


	printitemfromlist() {
	read -p "pick a number between 0-9" number
	echo ${array[$number]}

	

	}


	item_Removelast() {
	echo "When you add a item to the list, the last item will be removed:"
	read -p "what would you like to add:" answer4
	array+=($answer4)
	unset ${array[index-1]}
	echo ${array[index10]} " has been deleted and $answer4 has been added"
	}



	Removeitem() {
	read -p "Which Item would you like to remove from the list:" index 
	unset ${array[$index]}
	echo ${array[$index]} "The $index has been removed from the list"
	}

	Leavegame() {
		echo "leaving the game"
			exit
	}


	case $choice in
		1) printarray
			;;
		2) printitemfromlist
			;;
	   3) Additem
	   	;;
	   4) item_Removelast
	    	;;
	   5) Removeitem
	    	;;
	   6) Leavegame
	    	;;       
	esac
done