#!/bin/bash
# Writing two sentences: One prints to shell, another goes to /dev/null

echo "This sentence makes it to the terminal!"
echo "This one does not..." >> /dev/null

printf "\n\nScritp finished on `date`"
