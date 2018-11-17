#!/bin/bash

sed -n '10p' $1

tail -n+10 $1

awk '{if (FNR==10) print $0}' $1
