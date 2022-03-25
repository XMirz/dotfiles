#!/usr/bin/bash
case $1 in
  name)
    WINDOW_ID=$(xdotool getwindowfocus)
    NAME=$(xprop -id $WINDOW_ID | awk '/WM_CLASS/ {gsub("\"","");gsub(",",""); print $4}')
    if [[ ! $NAME = ""  ]]; then
      echo $NAME
    else
      echo $2
    fi
    ;;
esac

