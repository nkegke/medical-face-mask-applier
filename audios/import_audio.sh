#!/bin/bash

for filename in videos_masked/*.mp4; do
	len=${#filename}
	n=${filename:14:len-29}
	ffmpeg -i "$filename" -i audios/"$n".mp3 -c:v copy -c:a aac videos_masked/"$n"_masked.mp4 -loglevel quiet
	rm "$filename"
done