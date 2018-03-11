#!/bin/bash
VOLUME_LOCAL_NAME='Poziom głośności'
MESSAGE='Updated to: '
volume=$(echo `(pactl list sinks | grep "$VOLUME_LOCAL_NAME:")| awk '{print $6}'`)
notify-send -i /usr/share/icons/gnome/32x32/categories/gnome-multimedia.png -t 100 "Volume" "$MESSAGE: $volume"
