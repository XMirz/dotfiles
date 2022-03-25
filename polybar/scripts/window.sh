#!/usr/bin/bash
case $1 in
  name)
    xprop -id $(xdotool getwindowfocus) | awk '/WM_CLASS/ {gsub("\"","");gsub(",",""); print $4}'
    ;;
esac

