#!/usr/bin/env sh
export LC_ALL='POSIX' LANG='POSIX'

BAT_THESHOLD=25
BAT_TMP=$(cat /sys/class/power_supply/BAT1/capacity)
BAT_STATUS=$(cat /sys/class/power_supply/BAT1/status)
if [[ $BAT_TMP -lt $BAT_THESHOLD && $BAT_STATUS = 'Discharging' ]]
then
  notify-send --urgency=critical "Battery low!" "Charge battery now, $BAT_TMP% left"
  paplay ~/.config/bspwm/sound/transformer5.wav
fi

