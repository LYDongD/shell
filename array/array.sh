#!/bin/bash

#创建关联数组
declare -a fruit_price_array
fruit_price_array=([apple]='10' [orange]='20' [banana]='30')

##打印索引
echo ${!fruit_price_array[*]}

##打印索引值
echo ${fruit_price_array[*]}

##打印苹果的价格
echo "${fruit_price_array[apple]}"
