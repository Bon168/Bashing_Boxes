#!/bin/bash
clear
array=("ginger" "Pins" "Badge" "Caramel apple" "Misletoe" "Cookie cutters" "soup can" "Mustard" "Tennis racket" "Clock tower")
datafolder="/home/chinae/Bashing_Boxes/data"

	## shuf -n is a head count and it shuffles the positive integer of the amount in front of  -n
	## home/chinae/whatever/path is whereit get the random words from , it reads each line as one,
	## > tells it where to go 
	## home /chinae /destination is you destination , this is where it will eend up
#	echo 
	#}



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
	 option 10|Generate random box from file
	 option 11|Load item 
	 option 12 |Exit

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

array2="home/chinae/Bashing_Boxes/object.pool.txt"
# unset removes the function so that it can no longer be called

	Removeitem() {
	read -p "Which Item would you like to remove from the list pick a option between 0-9:" index 
	unset ${array[$index]}
	echo ${array[$index]} "this has been removed from the list"
	}




	SavingBox() {
	##- z checks if the string is empty 
	read  -p "what do you want to name your box:" filename
	if [ -z "$filename" ]; then
		echo "Could not save"
		return
	fi
    # "%s" tell bash to print a string in the array and "\n" moves to a new line for every string in the array
	  printf "%s\n"  "${array[@]}" > "$datafolder/$filename.txt"

		echo "saving $filename.txt to data folder"
		echo "Box $filename was saved successfully"
	
	}


	# mapfile loads a file(or command input) into a bash array
	LoadingoldBox() {
	read -p "enter the name of the box you would like to load:" filename
	datafolder="/home/chinae/Bashing_Boxes/data"
	filepath="$datafolder/$filename.txt"
	

	if [ -f "$filename.txt" ]; then
		echo "File was not found"
		return
	fi

	echo "loading box $filename"

	mapfile -t box < "$filepath"
	array=("${box[@]}")

	echo "$filename has been found!"

	}



	ListallBoxingfiles() {
		
			ls "$datafolder"
		
		
	}	




## -f checks if the file exits and if it is a regular file
deleteBox() {
	read -p "Enter name of box you would like to delete" filename
	waytofile1="$Data/${filename}.box"
	if [ -f "$waytofile1" ]; then
		rm "$waytofile1"

		echo "$filename has been deleted"
	else
		echo "Error file was not found"
	fi
}

	Leavegame() {
		echo "Goodbye my friend"
			exit
	}

generate_random_box(){
	read -p "How many objects you want?" size 
	mapfile -t array < <(shuf -n "$size" object.pool.txt)
	printarray
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
	   6) SavingBox
	   	;;
		7)	LoadingoldBox
			;;
		8) ListallBoxingfiles
			;;
		9) deleteBox
			;;
	   10) Leavegame
	    	;;    
	   11) generate_random_box
	   	;;
	   *) echo "Okay"
	    	;;	   
	esac
