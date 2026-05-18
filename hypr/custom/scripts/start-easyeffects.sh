#!/bin/bash


# Wait until easyeffects_source exists AND is usable
while ! pactl list sources short | grep -q "easyeffects_source"; do
    sleep 1
done

# Small extra delay to allow linking
# sleep 2

# Apply settings
pactl set-source-mute easyeffects_source 0
pactl set-source-volume easyeffects_source 65536
pactl set-default-sink effect_input.virtual-surround-7.1-hesuvi
