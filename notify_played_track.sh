COVER_URL=$(playerctl metadata mpris:artUrl)
COVER_FILE_NAME=${COVER_URL##*/}
COVERS_PATH=~/tmp/covers/
ARTIST=$(playerctl metadata xesam:artist)
ALBUM=$(playerctl metadata xesam:album)
TRACK=$(playerctl metadata xesam:title)

wget -nc -q -P $COVERS_PATH $COVER_URL

notify-send -i "$COVERS_PATH$COVER_FILE_NAME" -t 100 "$TRACK" "$ARTIST from $ALBUM"
