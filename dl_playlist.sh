#!/bin/sh
#usage: ./dl_playlist.sh <link> <path>
#path ends in /

#download each track from a youtube playlist and store it at the specified path
youtube-dl -f bestaudio -o "$2%(playlist_index)s-%(title)s.%(ext)s" $1

#rename spaces in tracks with underscores
cd $2
perl-rename 's/ /_/g' * 
