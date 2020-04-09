#!/bin/bash
# simple infobox demo

# global variables / default variables
INFOBOX=${INFOBOX=dialog}
TITLE="Default"
MESSAGE="SOMETHING TO SAY"
XCOORD=10
YCOORD=20

# function declarations

funcDisplayInfoBox() {
	$INFOBOX --title "$1" --infobox "$2" "$3" "$4"
	sleep "$5"
}

# script start


if [ "$1" == "shutdown" ]; then
	funcDisplayInfoBox "Warning" "Shutting Down" "11" "21" "5"
	echo "Shutting down"
else 
	funcDisplayInfoBox "Information..." "You are not doing anything fun..." "11" "21" "5"
	echo "Not doing anything..."
fi
