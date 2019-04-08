#!/bin/bash
#lookForNum.sh <size><path> - this script will find files with numbers in their basenames. Input the sizes in kilo bytes.

#Report error if the number of arguments is not 2.
if [ $# -lt 2 ] || [ $# -gt 2 ]
then
	echo "Error: $0 needs two arguments in the form of <-d or -f> <path>"
else
	find $2 -size +$1k -exec ls -sh {} \;
fi
