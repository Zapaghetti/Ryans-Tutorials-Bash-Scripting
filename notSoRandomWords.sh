#!/bin/bash
# notSoRandomWords.sh - The script will find words with 'n' characters where n is the provided argument by the user. This is also based on /usr/share/dict/american-english

if [ $# -gt 1 ] || [ $# -lt 1 ]
then
	echo 'You need to provide one argument (the number of characters) to filter the results'
else
	# convert user input $1 to a regular expression and use it for egrep expression
	#var=$1	
	egrep "^.{$1}$" /usr/share/dict/american-english
fi
