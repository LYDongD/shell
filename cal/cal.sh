#!/bin/bash

#保留小数
echo "scale=2;10/3" | bc

#进制转换
no=100
echo "obase=2;$no" | bc

no=1100100
echo "obase=10;ibase=2;$no" | bc

#计算平方根
echo "sqrt(100)" | bc
echo "10^10" | bc


