#!/bin/bash
# a for loop demo

SHELLSCRIPTS=`ls *.sh`

echo "Enter a file name to store the contents of scripts in this directory"
read OUTPUTFILE

for S in "$SHELLSCRIPTS"; do
	DISPLAY="`cat $S`"
	echo "File: $S has the following contents:"
	echo ""
	echo "$DISPLAY"
done > "$OUTPUTFILE.txt"


