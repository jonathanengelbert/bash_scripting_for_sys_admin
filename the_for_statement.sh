#!/bin/bash
# iterate through files with .sh extension of current directory with a for loop, print the contents of each

echo "Listing all shell scripts in current directory"

SHELLSCRIPTS=`ls *.sh`

for S in $SHELLSCRIPTS; do
	DISPLAY="`cat $S`"
	echo "File:$S - Contents $DISPLAY"
done
