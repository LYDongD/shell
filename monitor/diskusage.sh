#!/bin/bash

log_file="diskusage.log"

if [[ -n $1 ]]; then
    log_file=$1
fi

if [ ! -e $log_file ]; then
    printf "%-14s%-14s%-12s%-12s%-12s%-12s%-12s%-12s\n" "Date" "IP Address" "Device" "Capacity" "Used" "Free" "Percent" "Status" > $log_file
fi

ip_list="127.0.0.1"

(for ip in $ip_list;

do
    df -H | grep ^/dev/ > /tmp/$$.df
    while read line;
    do
        cur_date=$(date +%D)
        printf "%-14s%-14s" $cur_date $ip
        echo $line | awk '{printf("%-12s%-12s%-12s%-12s%-12s", $1, $2, $3, $4, $5)}'
        pusg=$(echo $line | awk '{print $5}' | sed 's/%//g') 
        if [ $pusg -lt 80 ] 
        then
            echo SAFE
        else 
            echo ALERT
        fi
    done < /tmp/$$.df
done
) >> $log_file
