#!/usr/bin/env sh
# Restarts `Polybar` in place
# TODO: check it: https://github.com/jaagr/polybar/issues/563

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top &
