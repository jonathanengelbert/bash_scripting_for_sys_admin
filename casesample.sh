#!/bin/bash
# demo of the case statement

echo "MAIN MENU"
echo "============="
echo "1) Choice One"
echo "2) Choice Two"
echo "3) Choice Three"

echo "Enter Your Choice"

read MENUCHOICE


case $MENUCHOICE in 
	1)
		echo "Going to Choice One" ;;
	2)
		echo "Going to Choice Two" ;;
	3)
		echo "Going to Choice Three" ;;
	*)
	        echo "That's not a choice yooooo" ;;
esac



