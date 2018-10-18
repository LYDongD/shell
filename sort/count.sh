#!/bin/bash

input="ahebhaaa"
output=`echo $input | sed 's/[^\n]/&\n/g'`

#|sed '/^$/d'|sort|uniq -c|tr -d '\n'`
echo $output
