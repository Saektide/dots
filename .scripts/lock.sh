#!/bin/bash

# Remove old pics if any
rm -f /tmp/lck.png
rm -f /tmp/lck0.png

# Screenshot the screen and lock it
import -window root /tmp/lck.png
convert /tmp/lck.png -brightness-contrast -40x-50 -format jpg -quality 80 /tmp/lck0.png
i3lock -i /tmp/lck0.png