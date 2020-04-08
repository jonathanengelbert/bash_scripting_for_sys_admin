#!/bin/bash

# global variables
USERNAME=$1

# function definitions
myfunc(){
  if [ $# -eq 0 ]; 
  then 
	  echo "No input was given"
	  exit 1
  fi 

  echo "You entered $1"
}

myfunc $1 

echo "Finished successfully"



