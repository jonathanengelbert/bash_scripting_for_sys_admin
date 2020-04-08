#!/bin/bash
# iterates over each line of a non-binary file

echo "Enter a filename to parse"
read FILE

while read -r S; 
  do
	  echo "Superhero name: $S"
done <"$FILE"
