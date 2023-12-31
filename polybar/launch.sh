#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

if [[ $(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f4 | cut -d"+" -f2- | uniq | wc -l) == 1 ]]; then
  n=$(polybar --list-monitors | cut -d":" -f1) 
  NUMBER=$(polybar --list-monitors | cut -d":" -f1 | tail -c 2) 
    if [[ $NUMBER == 1 ]]; then
        MONITOR=$n TRAY_POS=right polybar main &
    else
        MONITOR=$n TRAY_POS=none polybar secondary &
    fi
else
  primary=$(xrandr --query | grep primary | cut -d" " -f1)
  for m in $screens; do
    if [[ $primary == $m ]]; then
        MONITOR=$m TRAY_POS=right polybar main &
    else
        MONITOR=$m TRAY_POS=none polybar secondary &
    fi
  done
fi
