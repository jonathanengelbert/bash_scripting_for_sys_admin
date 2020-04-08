#!/bin/bash
# how variable scoping works in bash

# global variable declaration
GLOBALVAR="Globally Visible"


# sample function
funcExample() {
	LOCALVAR="Locally Visible"
}

clear
echo "$GLOBALVAR"
echo "$LOCALVAR"
echo "Should have LOCALVAR right above if it was visible"
funcExample
echo "$LOCALVAR"
