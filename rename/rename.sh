#!/bin/bash

count=1;
for old in *.txt
do
new=rename-$count.${old##*.}
mv "$old" "$new" 2> /dev/null

if [ $? -eq 0 ];
then

echo "rename $old to $new"
let count++

fi

done






