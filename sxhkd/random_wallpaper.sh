#!/bin/bash
WPU=$(find ~/.config/bspwm/wallpaper/ -xtype f | sort -R | head -1) && feh --bg-fill "$WPU"
