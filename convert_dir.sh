#!/bin/sh
for f in *
do
	if [ "${f##*.}" != "webp" ]
	then
		magick "$f" -resize 1920x1080^ \-gratiy center -extent 1920x1080 -define webp:lossless=true "${f%.*}".webp
			if [ "${f##*.}" != "webp" ]
			then
				rm "$f"
				echo "$f: Converted to ${f%.*}.webp"
			fi
	else
		echo "$f: already webp"
	fi
done
