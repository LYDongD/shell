#!/bin/bash
# 图片crawler

#param check
if [ $# -ne 3 ];
then
    echo "Usage: $0 URL -d DIRECTORY"
    exit -1
fi


#param parse
for i in {1..4}
do
    case $1 in 
    -d) 
       shift; #if match -d, then shift to next param to set dir
       directory=$1; 
       shift; #if match dir, shift to next param to set url
       ;; # break

    *) #default
       url=${url:-$1}; 
       shift;
       ;;
    esac
done


mkdir -p $directory
baseurl=$(echo $url | egrep -o "https?://[a-z.]+")
echo "url: ${url}"
echo "baseUrl: ${baseurl}"
