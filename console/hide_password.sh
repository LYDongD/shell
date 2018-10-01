#!/bin/bash


#-echo禁止输出发送到终端
stty -echo

#从终端读取命名并赋值给变量password
read -p 'Enter Password:' password 

#恢复输出
stty echo

echo "\n"
echo "Password read: $password"
