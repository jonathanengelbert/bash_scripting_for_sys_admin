#!/bin/bash
# overwrites the system exit and executes a custom function

# global variables
TMPFILE="tmpfile.txt"
TMPFILE2="tmpfile2.txt"

# we want to run the following function on exit, so we get our custom exit. Comment it out to get a regular exit
trap 'funcMyExit' EXIT

# functions
  # run this exit instead of the default exit when called
  funcMyExit () {
	  echo "Exit Intercepted..."
	  echo "Cleaning up the temp files..."
	  # then remove all files with following prefix
	  rm -rf "tmpfil*.txt"
	  # arbitrary exit code here
	  exit 255
  }

echo "Write something to tmp file for later use..." > $TMPFILE
echo "Write something to tmp file 2 for later use..." > $TMPFILE2

echo "Trying to copy the indicated file before processing..."
# here we rewrite error ouput to /dev/null because we don't want to hear the file does not exists. We are passing a file that does not on purpose
cp -rf $1 newfile.txt 2>/dev/null

# if status code is 0, meaning if process succeeded...
if [ "$?" -eq 0 ]; then 
	echo "Everything worked out!"
else
	echo "I guess we have an issue..."
	exit 1
fi


echo "The error code was $?"

