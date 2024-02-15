#!/bin/bash
if [ "${1##*.}" != "webp" ]
then
	magick "$1" -resize 1920x1080^ \-gravity center -extent 1920x1080 -define webp:lossless=true "${1%.*}".webp
		if [ "${1##*.}" != "webp" ]
		then
			rm "$1"
			echo "$1: Converted to ${1%.*}.webp"
		fi
else
	echo "$1: already webp"
fi
