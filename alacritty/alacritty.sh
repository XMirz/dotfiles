#!/usr/bin/env bash

case $1 in
  "--toggle-transparent")
    ALACRITTY=$(grep 'opacity'  $HOME/.config/alacritty/alacritty.yml | awk '{print $2;}')
    if [[ $ALACRITTY < 1 ]]; then 
      sed -i "s/opacity: $ALACRITTY/opacity: 1/" $HOME/.config/alacritty/alacritty.yml
    else
      sed -i "s/opacity: 1/opacity: 0.9/" $HOME/.config/alacritty/alacritty.yml 
    fi
  ;;
esac

