#!/bin/bash

for filename in videos/*.mp4; do
	len=${#filename}
	n="${filename:0:len-4}"
	ffmpeg -i "$filename" "$n".mp3 -loglevel quiet
done

mv videos/*.mp3 ./audios