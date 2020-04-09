
#!/bin/bash
# example of if/then/else

clear

echo "ENTER A NUMBER BETWEEN 1 and 3"
read VALUE

if [ "$VALUE" -eq "1" ] 2>/dev/null;then
	echo "You entered 1"

elif [ "$VALUE" -eq "2" ] 2>/dev/null;then
	echo "You entered 2"

elif [ "$VALUE" -eq "3" ] 2>/dev/null;then
	echo "You entered 3"


else 
	echo "YOU DID NOT FOLLOW THE INSTRUCTIONS!!!!"
fi
