#!/bin/bash
# Script that interacts with user to get input

printf  "\n\nPlease enter your first name\n\n"
read FIRSTNAME

printf  "\n\nPlease enter your last name\n\n"
read LASTNAME

printf  "\n\nPlease enter your age\n\n"
read AGE


printf "\n\nOk, your name is $FIRSTNAME $LASTNAME and you will be `expr $AGE + 10` in 10 years\n\n\n"


