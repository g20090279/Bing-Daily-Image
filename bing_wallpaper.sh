#!/bin/bash
binghost="https://www.bing.com"
bingJsonUrl="/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US"
bingImageUrl=$(curl "$binghost$bingJsonUrl" | grep -o -P '(?<=\"url\":\").*?(?=\")')
curl "$binghost$bingImageUrl" > ~/Pictures/bing/background.jpg
/usr/bin/gsettings set org.gnome.desktop.background picture-uri "/net/home/liang/Pictures/bing/background.jpg"
/usr/bin/gsettings set org.mate.background picture-filename "/net/home/liang/Pictures/bing/background.jpg"