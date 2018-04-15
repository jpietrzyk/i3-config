#!/bin/bash
#
# Small 'current track' info script
#
# Requires awesome `playerctl`:  https://github.com/acrisci/playerctl
# and `Dunst` - also awesome notofication daemon: https://dunst-project.org/
#
# Cover option is working and was tested **ONLY** with official Spotify Client
#
# It is as simple as possible, sorry but it won't work correctly
# when > 1 players are working
# Check `playerctl` options to list and select running players
#

COVER_URL=$(playerctl metadata mpris:artUrl)
COVER_FILE_NAME="${COVER_URL##*/}.png"
COVERS_PATH=~/tmp/covers/
ARTIST=$(playerctl metadata xesam:artist)
ALBUM=$(playerctl metadata xesam:album)
TRACK=$(playerctl metadata xesam:title)
RATING=$(playerctl metadata xesam:autoRating)
MESSAGE="$ARTIST ($ALBUM)"
STATUS=$(playerctl status)

echo $COVER_FILE_NAME

wget -nc -q -O "$COVERS_PATH/$COVER_FILE_NAME" $COVER_URL

notify-send -i "$COVERS_PATH$COVER_FILE_NAME" -t 2000 -u normal -h string:player:info "$STATUS: $TRACK" "$MESSAGE"

