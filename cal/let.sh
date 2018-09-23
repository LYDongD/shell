#!/bin/bash

#使用let进行运算
no1=4
no2=5
let result=no1+no2
echo $result

#使用[]进行运算
result2=$[no1+no2]
echo $result2

#使用(())进行运算
result3=$((no1+no2))
echo $result3

#使用bc进行高级运算
echo "4 * 0.8" | bc

#使用bc计算后赋值给变量
no=54
result4=`echo "$no*1.5" | bc`
echo $result4

#使用bc计算并保留2位小数
echo "scale=2; 3/8" | bc
