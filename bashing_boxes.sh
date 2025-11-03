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
	 option 6 |Saving your current box to a file
	 option 7 |Loading a previously saved box
	 option 8 |Listing existing saved boxes
	 option 9 |Deleting a saved box
	 option 10 |Exit

	"

	read -p "Choose 1 option from 1 to 10:" choice

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
	read -p "Which Item would you like to remove from the list pick a option between 0-9:" index 
	unset ${array[$index]}
	echo ${array[$index]} "this has been removed from the list"
	}


	SavingBox() {
	echo "what do you want so name your box:" 
	read filename
	if [ -z $filename ] then
		echo "Could not save"
		return

	fi

		mkdir -p

		echo "saving $filename.txt to data folder"
		echo "Box $filename was saved successfully"

}


LoadingoldBox() {
read -p "enter the name of the box you would like to load:" filename
waytofile="$Data/$filename.Boxes"
if [-z $filename ]; then
	echo "file was not found"
	return
fi

echo "Box $filename was found successfully"

}

ListallBoxingfiles() {
	echo "listing all box files"
	print 
}




	Leavegame() {
		echo "Goodbye my friend"
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