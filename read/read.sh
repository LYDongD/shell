#!/bin/bash

#读取3个字符到变量
read -n 3 var1
echo
echo 'var1: ' $var1

#不回显方式读取变量
read -p "Enter Password: " -s pwd
echo 'var2: ' $pwd

#2s内读取变量
read -t 2 var3
echo 'var3: ' $var3

