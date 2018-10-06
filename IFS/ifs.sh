#!/bin/bash

line="root:*:0:0:System Administrator:/var/root:/bin/sh";

#cache old ifs
echo current ifs: $IFS;
oldIFS=$IFS;

#set new IFS
IFS=":";
count=0;

#literate items by seperating the line with IFS
for item in $line
do
    [ $count -eq 0 ] && user=$item;
    [ $count -eq 6 ] && shell=$item;
    let count++;
done

#recover IFS
IFS=$oldIFS;

#print the user and shell
echo $user\'s shell is $shell;

