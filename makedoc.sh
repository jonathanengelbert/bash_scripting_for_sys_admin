#!/bin/bash
# makes a documentation file, taking all scripts in current directory and compiling them into one file

# file we are going to output	
DOCFILE="script_listing"

# echoes what makes this a self-executing documentation file
 
echo "#!/bin/more" > $DOCFILE

ls *.sh > tmplisting.txt

# -r means a single line, which we use as delimeter (one file per line)
while IFS= read -r FILENAME; do
	# if it's a file (-f), process
	if [ -f "$FILENAME" ]; then
		echo "===============================" >> "$DOCFILE"
		echo "SCRIPT NAME: $FILENAME" >> "$DOCFILE"
		echo "===============================" >> "$DOCFILE"
		echo ""
		echo "`cat $FILENAME`" >> "$DOCFILE"

	fi
# here we redirect so that the read statment reads the filenames passed on to it
done < tmplisting.txt

# marks it as executable
chmod 755 "$DOCFILE"

# removes temporary file
rm tmplisting.txt







