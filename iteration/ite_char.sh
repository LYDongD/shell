#!/bin/bash
word="apple"
for ((i=0; i<${#word}; i++))
do
    echo ${word:i:1};
done
