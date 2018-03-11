#!/bin/bash
VOLUME_LOCAL_NAME='Poziom głośności'
MESSAGE='Updated to: '

volume=$(echo `(pactl list sinks | grep "$VOLUME_LOCAL_NAME:")| awk '{print $6}'`)
notify-send -i /usr/share/icons/gnome/48x48/devices/audio-speakers.png -t 1000 -u normal -h string:volume:info "Volume" "$MESSAGE: $volume"
