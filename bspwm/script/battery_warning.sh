#!/bin/sh
STATUS=$(acpi -b)
if [[ `acpi -b | grep Discharging` && `acpi -b | cut -f 4 -d " " | cut -f 1 -d "%"` < 21 ]]
then
    PERCENT=$(echo $STATUS | cut -f 4 -d ' ' | cut -f 1 -d',')
    MESSAGE="$PERCENT left, please charge now!"
    dunstify -u critical "Low battery" "$MESSAGE"
    CURRENT=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]\+' | awk 'NR==2 {print $1}')
    pactl set-sink-volume @DEFAULT_SINK@ 150%
    paplay ~/.config/bspwm/sound/transformer5.wav
    pactl set-sink-volume @DEFAULT_SINK@ $CURRENT%
fi
