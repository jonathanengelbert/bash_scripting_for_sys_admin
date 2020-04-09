#!/bin/bash
# a demo of a message box with an OK button

# global variables / default variables
MSGBOX=${MSGBOX=dialog}
TITLE="Default"
MESSAGE="Some Message"
XCOORD=10
YCOORD=20

echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
echo "Parameter 4: $4"


# function declarations - start
funcDisplayMsgBox () {
	$MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}


# script start

clear


if [ "$1" == "shutdown" ]; then 
	funcDisplayMsgBox "WOW WOW WOW MA DUUUUUUUDE!" "Please press OK when you are ready to shut down the system" "20" "50"
	echo "SHUTTING DOWN!!!"
else

	funcDisplayMsgBox "BORING...." "BORING MA DUDEEEEEE. We are not going to do anything" "20" "50"
	echo "BORING MA DUDEEEEEE. We are not going to do anything"
fi
