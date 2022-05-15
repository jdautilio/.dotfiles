#!/bin/sh

# Kill running instances
killall -q polybar

# While until the processes have been killed
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar --reload xmonad-mainbar -c ~/.config/polybar/config.ini
