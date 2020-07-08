#!/bin/bash
cd ~/Desktop/plantuml/markdown/

if [ $# -ne 1 ]; then
    echo "$0 needs image name as param"
    exit -1
fi

img=$1

#push img
git add img
git commit -m 'add new img'
git push origin master


#return img url
baseUrl="https://github.com/LYDongD/graphic/blob/master/markdown/"
url=$baseUrl$img"?raw=true"
echo $url


