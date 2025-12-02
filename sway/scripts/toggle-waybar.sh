#!/bin/bash

STATE_FILE="/tmp/waybar_hidden"

if [ -f "$STATE_FILE" ]; then
    # File exists = waybar is hidden, so show it
    rm "$STATE_FILE"
    waybar &
else
    # File doesn't exist = waybar is visible, so hide it
    touch "$STATE_FILE"
    pkill waybar
fi
