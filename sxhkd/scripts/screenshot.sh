#!/usr/bin/env sh

export LC_ALL='POSIX' LANG='POSIX'

# Check and create directory
if [ ! -d "$HOME/Pictures" ]
then
  mkdir "$HOME/Pictures"
fi

if [ ! -d "$HOME/Pictures/Screenshot" ]
then
  mkdir "$HOME/Pictures/Screenshot"
fi

maim="maim --capturebackground -p 8 --noopengl"
name="$HOME/Pictures/Screenshot/screenshot-$(date +%Y%m%d_%H%M%S).png"

notify(){
  if [ ! -f $name ]; then
    notify-send -u critical "Screenshot failed" "Screenshot not captured"
    exit 1
  else
    notify-send "Screenshot" "Screenshot saved in $name"
  fi
}

case $1 in 
  area)
    $maim -s "$name"
    notify &
    ;;
  full)
    $maim "$name"
    notify &
    ;;
esac

exit 1    


