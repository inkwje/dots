#!/usr/bin/env sh

PATH_BATTERY="/sys/class/power_supply/BAT0"

while :; do
    read -r BATC < "$PATH_BATTERY/capacity"
    read -r BATS < "$PATH_BATTERY/status"

    DATE=$(date +"%H:%M %Y-%m-%d")

    echo "$BATS: $BATC% | $DATE"

    sleep 15
done
