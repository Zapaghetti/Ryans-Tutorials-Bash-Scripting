#!/bin/bash
#randomWord.sh - This script generates a random word based on a file called american english in /usr/share/dict/american-english

#choose nth line word based on the $RANDOM value
lineNum=$RANDOM
head -n $lineNum /usr/share/dict/american-english | tail -n +$lineNum
