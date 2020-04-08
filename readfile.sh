#!/bin/bash
# simple file reading (no birnary) and displays one line at a time

echo "Enter a filename to read:"
read FILE

while read -r SUPERHERO; do
	echo "Superhero Name: $SUPERHERO"
done < "$FILE" > output.txt
