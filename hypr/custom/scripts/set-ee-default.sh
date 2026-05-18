#!/bin/bash
# Wait for EasyEffects virtual mic to exist, then set it as default

EE_SOURCE="easyeffects_source"

while ! pactl list short sources | grep -q "$EE_SOURCE"; do
    sleep 0.2
done

pactl set-default-source "$EE_SOURCE"
pactl set-source-volume "$EE_SOURCE" 100%
