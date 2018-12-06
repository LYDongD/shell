#!/bin/bash

#param check
if [ $# != 2 ]; then
    echo "lack param"
    exit -1
fi

filename=$1
base_pattern='/^\(.\)'

#concat pattern at prehalf
count=$(($2/2))
for ((i=1; i<$count; i++))
do
    #pattern concat
    base_pattern=$base_pattern'\(.\)';
done

#handle middle char
if [ $(($2%2)) -ne 0 ]; then
    base_pattern=$base_pattern'.';
fi

#reverse subpattern refer
for ((count; count>0; count--))
do
base_pattern=$base_pattern'\'"$count";
done

#pattern end and print
base_pattern=$base_pattern'$/p'

#match and print
sed -n "$base_pattern" $filename


