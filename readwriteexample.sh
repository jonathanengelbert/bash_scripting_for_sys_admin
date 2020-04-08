#!/bin/bash
# iterate over lines of a non-binary file, write out output and close it


echo "Enter file to parse"
read FILE

echo "Enter output file"
read OUTPUT

# file is open to read and write
exec 5<>$FILE

# read each line and output it to the console, pre appending with prefix
while read -r E;
  do
	  echo "Superhero name is: $E"
# finish, read process
done <&5>$OUTPUT.txt

# records in original file when it was last accessed 
echo "File Was Read On: `date`">&5

exec 5>&-






