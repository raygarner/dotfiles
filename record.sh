#!/bin/sh
ffmpeg -f x11grab -r 24 -s 1920x1080 -i :0.0 -f pulse -i default $1

#-i :0.0 sets the screen id to record from
