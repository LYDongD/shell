#!/bin/bash
for ip in 10.8.35.{1..255};
do
   ping $ip -c 2 &> /dev/null;
   if [ $? == 0 ]; then 
      echo $ip is alive
   fi
done 
