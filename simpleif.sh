#!/bin/bash
# simple script to demonstrate conditionals

declare -i TARGET=3

echo "Guess the Secret Number"
echo "========================="
echo ""
echo "Enter a number between 1 and 5"

read GUESS

if [ $GUESS -eq $TARGET ]
then
	echo "That's right, the number is $TARGET"

fi

