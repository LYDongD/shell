#!/bin/bash
#用当前目录下的图片创建相册

echo "Creating album..."

mkdir -p thumbs

# generate head, redirect content before EOF to index.html
cat <<EOF > index.html

<html>
<head>
<head>
<style>
body {
    width:470px;
    margin:auto;
    border:1px dashed grey;
    padding:10px
}

img {
    margin:5px
    border:1px solid black;
}

</style>
</head>

<body>

<center><h1>#Album title</h1></center>
<p>
EOF


## create thunbs and img url, append to index.html
for img in *.*
do
    ext=${img##*.}
    if [[ $ext == "png" ]]||[[ $ext == "jpg" ]]; then
        #create thumb image using convert
        convert "$img" -resize "100x" "thumbs/$img"
        echo "<a href=\"$img\"><img src=\"thumbs/$img\" title=\"$img\"/></a>" >> index.html
    fi
done


#append the foot part
cat <<EOF >> index.html

</p>

</body>
</html>
EOF

echo "Album generated to index.html"


