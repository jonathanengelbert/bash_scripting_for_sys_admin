#!/bin/bash
# checks if script got all parameters it expects in one line. exits if it didn't


: ${3?"USAGE:$1 ARGUMENT $2 ARGUMENT $3 ARGUMENT"}

# this won't print if less than 3 arguments are present
echo "I got it all!"
