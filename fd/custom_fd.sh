#!/bin/bash

#创建文件描述符3读取文件
echo "test" > test.txt
exec 3< test.txt
cat <&3

#创建文件描述符4写入文件(截断模式)
exec 4> test2.txt
echo "test2" >&4
cat test2.txt

# 创建文件描述符5写入文件(追加模式)
exec 5>> test3.txt
echo "test3" >&5
echo "test3 again" >&5
cat test3.txt
