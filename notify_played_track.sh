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

notify-send -i "$COVERS_PATH$COVER_FILE_NAME" -t 1000 -u normal -h string:player:info "$STATUS: $TRACK" "$MESSAGE"

