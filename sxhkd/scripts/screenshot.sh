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
  if [ $name = false  ]; then
    notify-send "Screenshot failed" "$USER cancelled taking screenshot."
    exit 1
  else
    notify-send "Screenshot" "Screenshot saved in $name"
  fi
}

case $1 in 
  area)
    $maim -s "$name"
    name=false
    notify &
    ;;
  full)
    $maim "$name"
    name=false
    notify &
    ;;
esac

exit 1    


