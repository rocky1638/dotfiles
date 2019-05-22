#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar main

echo "Polybar launched  "
