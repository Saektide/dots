#!/bin/bash

killall -q dunst
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

dunst &
echo "[Dunst] Reloaded and testing..."

notify-send "Low level" -u low
notify-send "Normal level" -u normal
notify-send "Critical level" -u critical