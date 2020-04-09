#!/bin/bash
# Working with exit status types

# the line below will force the script to exit upon
# encountering an error, if left uncommented
#set -e

expr 1 + 5
echo $?

# this should fail for it would run in an directory
# where the file it tries to remove does not exit
rm doodles.sh
echo $?

expr 10+10
echo $?



