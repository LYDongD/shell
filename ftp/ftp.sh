#!/bin/bash
host='120.78.142.82'
user='root'
passwd='Pss123er'

ftp -i -n $host << EOF

user ${user} ${passwd}
binary

cd /tmp
lcd ./
prompt
put test2.txt
quit

EOF
