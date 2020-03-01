#!/bin/sh
#ffmpeg -f x11grab -r 24 -s 1920x1080 -i :0.0 -f pulse -i 7 $1

ffmpeg -f x11grab -r 24 -s 1920x1080 -i :0.0 -f pulse -ac 1 -i 8 -f pulse -ac 2 -i 7 -map 0 -map 1 -map 2 -filter_complex amerge=inputs=2 $1
#-i :0.0 sets the screen id to record from
