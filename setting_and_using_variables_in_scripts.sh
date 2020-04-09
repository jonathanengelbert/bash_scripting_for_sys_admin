#!/bin/bash
# Setting and using variables in scripts

STARTOFSCRIPT="`date`"
MYUSERNAME="Jon"
MYPASSWORD="veryStronGPassw0RD123r"

printf "\n\nThis script started on $STARTOFSCRIPT\n" 
printf "\n\nManually set username: $MYUSERNAME" 
printf "\n\nManually set password: $MYPASSWORD\n" 
ENDOFSCRIPT=`date`
printf "\nThis script finished on $ENDOFSCRIPT"
