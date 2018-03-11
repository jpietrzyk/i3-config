#!/bin/bash
VOLUME_LOCAL_NAME='Poziom głośności'
MESSAGE='Updated to: '

volume=$(echo `(pactl list sinks | grep "$VOLUME_LOCAL_NAME:")| awk '{print $6}'`)
notify-send -i /usr/share/icons/gnome/256x256/devices/audio-speakers.png -t 100 -u normal -h string:volume:info "Volume" "$MESSAGE: $volume"
