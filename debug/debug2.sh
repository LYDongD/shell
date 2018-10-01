#!/bin/bash

function log()
{
[ "$_log" == "on" ] && $@ || :
}

log for i in {1..10}
do
log echo $i
done 

