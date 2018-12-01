#!/bin/bash

awk '{buffer[NR%10]=$0;} END{for(i=1; i<11; i++){
    print buffer[i%10]
}}'
