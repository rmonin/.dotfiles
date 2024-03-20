#!/bin/bash
# Used to output the battery level when working in a fullscreen Tmux
# environment.

# percent=`pmset -g batt | grep -Eo "\d+%" | cut -d% -f1`
percent=`cat /sys/class/power_supply/BAT0/capacity`

if   (( percent > 25 )); then color='#[fg=default]'
elif (( percent > 10 )); then color='#[fg=colour3 none]'
                         else color='#[fg=colour1 none bold]'
fi
echo "$color$percent%"
