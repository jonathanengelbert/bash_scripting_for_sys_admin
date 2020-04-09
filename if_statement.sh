#!/bin/bash
# demo of how if works in bash

echo "Guess the number between 1 and 5"
read USERINPUT

if [ $USERINPUT -eq 3 ]; then
	echo "YOU GUESSED IT!"
fi


