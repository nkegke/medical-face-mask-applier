#!/bin/bash

./extract_audio.sh
python mask.py videos
./audios/import_audio.sh
for filename in audios/*.mp3; do
	rm "$filename"
done