#!/bin/bash
# simple if else example


echo "Enter a number between 1"
read VALUE

if [ "$VALUE" -eq "1" ] 2>/dev/null; then
	echo "Your entered $VALUE"
else
	echo "You didn't follow instructions, you dumb bitch"
fi
