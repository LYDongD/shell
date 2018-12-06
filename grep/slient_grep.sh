#!/bin/bash

match_text=$1
file=$2

grep -q $match_text $file

if [ $? -eq 0 ]
then
    echo "the text exists in the file"
else
    echo "the text doesn't exist in the file"
fi
