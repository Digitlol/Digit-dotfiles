#!/bin/bash
# EasyEffects startup
easyeffects --gapplication-service
sleep 2
pactl set-source-mute easyeffects_source 0
pactl set-source-volume easyeffects_source 65536
pactl set-default-source easyeffects_source
pactl set-default-sink effect_input.virtual-surround-7.1-hesuvi
