#!/bin/sh
#creates an audio file between two timestamps in a larger audio file
#time format: 00:00:00 (hours:mins:secs)
#usage: ./split.sh <album-file>
#press Ctrl-c to quit once all tracks have been made

COUNT=1

while true; do
	echo "Track name: "
	read NAME
	echo "Track start: "
	read START
	echo "Track end: "
	read END

	ffmpeg -i $1 -acodec copy -ss $START -to $END "$COUNT-$NAME"
	COUNT=$((COUNT + 1))


done
