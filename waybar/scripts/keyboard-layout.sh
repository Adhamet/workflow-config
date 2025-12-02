#!/bin/bash
LAYOUT=$(swaymsg -t get_inputs | jq -r '.[] | select(.identifier=="16700:8467:Dell_KB216_Wired_Keyboard") | .xkb_active_layout_name')
if [[ "$LAYOUT" == "English (US)" ]]; then
    echo "⌨ EN"
elif [[ "$LAYOUT" == "Arabic" ]]; then
    echo "⌨ AR"
else
    echo "⌨ ?"
fi
