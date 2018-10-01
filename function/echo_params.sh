#!/bin/bash

#function definition
function echoParameters()
{
#分别打印第1，2和所有参数
echo $1;
echo $2;
echo $@;
return 0;
}


#fuction call
echoParameters a b c

#recive the function return value
if [ $? -eq 0 ]; then
echo 'function invoke successfully~'
else 
echo 'function invoke failure!!'
fi

