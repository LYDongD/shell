#!/bin/bash

#param check 
if [ $# -ne 1 ]; then
    echo "$0 needs 1 param: URL\n";
    exit -1;
fi

first_time=0

#if last.html do not exist, saying first_time = true
if [ ! -e "last.html" ]; then
    first_time=1
fi

curl --silent $1 -o recent.html

if [ $first_time -ne 1 ]; then
    changes=$(diff -u last.html recent.html)
    if [ -n "$changes" ]; then
        echo -e "Changes:\n"
        echo "$changes"
    else
        echo -e "\nno changes"
    fi
else
    echo "first time archiving..."
fi

cp recent.html last.html







