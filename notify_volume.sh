#!/bin/bash

# Notifies about volume % value
# Requires awesome `Dunst` notiffication daemon: https://dunst-project.org/
# `pulseaudio`: https://en.wikipedia.org/wiki/PulseAudio and `pactl`
#
# Set below variable to your local sink name
# You can list your sinks with `pactl list sinks` command
VOLUME_LOCAL_NAME='Poziom głośności'
# Other vars
VOLUME_ICON_PATH='/usr/share/icons/gnome/256x256/devices/audio-speakers.png'
VOLUME_TITLE='Volume'
VOLUME_MESSAGE='Has been set to '

value=$(echo `(pactl list sinks | grep "$VOLUME_LOCAL_NAME:")| awk '{print $6}'`)
notify-send -i $VOLUME_ICON_PATH -t 700 -u normal -h string:volume:info\
            "$VOLUME_TITLE" "$VOLUME_MESSAGE: $value"
