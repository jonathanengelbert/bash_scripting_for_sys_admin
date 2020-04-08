#!/bin/bash
# demo of using error handling with exit

echo "Change to a directory and list the contents"
DIRECTORY=$1


cd $DIRECTORY 2>/dev/null

if [  $DIRECTORY ]; then
	echo "We can change into directory $DIRECTORY and list its contents:"
	echo ""
	echo "`ls -la`"
else
	echo "We can not currently change directory. This process will be aborted and this incident will be reported"
	exit 1
fi
