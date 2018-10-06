#!/bin/bash

file="/etc/passwd"

#check if file exist

if [ -e $file ];then
    echo file exsists
else
    echo file do not exist
fi


