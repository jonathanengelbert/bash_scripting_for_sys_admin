#!/bin/bash
# example on how to use delimiters

echo "Enter file to parse"
read FILE

echo "Enter the Delimiter"
read DELIM

IFS="$DELIM"

while read -r FN LN AGE LOCATION PROFESSION SPEC; 
  do
	echo "First Name: $FN"
	echo "Last Name: $LN"
	echo "Age: $AGE"
	echo "Location: $LOCATION"
	echo "Profession: $PROFESSION"
	echo "Specialization: $SPEC"
done <"$FILE" 
