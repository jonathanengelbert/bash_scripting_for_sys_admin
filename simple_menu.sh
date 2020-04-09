#!/bin/bash
# simple dialog box that will display a menu


# global variables / default variables
MENUBOX=${MENUBOX=dialog}


# functions

funcDisplayDialogMenu () {
	# here a menu pops up with some choices. because stdout is being used to render the box and options, we redirect the stdout from choosing an option to a log file
	$MENUBOX --title "[ MAIN MENU ]" --menu "Use UP/DOWN to Navigate and Enter" 15 45 4 1 "Display Hello World" 2 "Display Goodbye World" 3 "Display Nothing" X "Exit" 2>choice.txt
}


# script start

funcDisplayDialogMenu

# this assumes the file is written to the same directory where this script runs
case "`cat choice.txt`" in
	1) echo "Hello World";;
	2) echo "Goodbye World";;
	3) echo "Nothing";;
	X) echo "Exit";;

esac

# end
	
