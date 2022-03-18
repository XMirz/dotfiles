#!/bin/bash
import -window $(xdotool getactivewindow) -border $HOME/Pictures/Screenshots/Screenshot.png;

convert $HOME/Pictures/Screenshots/Screenshot.png +clone -background black -shadow 50x10+0+10 +swap -background none -layers merge +repage $HOME/Pictures/Screenshots/Screenshot.png;

convert $HOME/Pictures/Screenshots/Screenshot.png -bordercolor none -border 30 $HOME/Pictures/Screenshots/Screenshot_$(date '+%d_%m_%Y.%H%M_%S').png && rm $HOME/Pictures/Screenshots/Screenshot.png