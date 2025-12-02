#!/bin/bash

# Check for common recording apps
obs=$(pgrep -x "obs" 2>/dev/null)
wf_recorder=$(pgrep -x "wf-recorder" 2>/dev/null)
gpu_screen=$(pgrep -f "gpu-screen-recorder" 2>/dev/null)

if [ -n "$obs" ] || [ -n "$wf_recorder" ] || [ -n "$gpu_screen" ]; then
    echo '{"text": "󰑊 REC", "class": "recording", "tooltip": "Recording in progress"}'
else
    echo '{"text": "", "class": ""}'
fi
