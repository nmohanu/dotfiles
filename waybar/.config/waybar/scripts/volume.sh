#!/bin/bash

# Get volume and mute state
VOL=$(wpctl get-volume @DEFAULT_SINK@ | awk '{printf("%d",$1*100)}')
MUTED=$(wpctl get-mute @DEFAULT_SINK@)

if [ "$MUTED" = "true" ]; then
    ICON="🔇"
elif [ "$VOL" -ge 50 ]; then
    ICON="🔊"
elif [ "$VOL" -gt 0 ]; then
    ICON="🔉"
else
    ICON="🔈"
fi

echo "$ICON $VOL%"