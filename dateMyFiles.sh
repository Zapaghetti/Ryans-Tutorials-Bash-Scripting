#!/bin/bash
#dateMyFiles.sh - This script will take a file as an argument and make a copy of it, and put today's date in front of its name.

#get todays date and save it to a var
date=$(date -I)

#take basename using basename function and {var% syntax}


basename=$(basename $1)

filename=${basename%.*}

extension=${basename##*.}

#rename the file using mv function

cp $1 ~/Documents/Bash/Test/"$filename"_$date.$extension


