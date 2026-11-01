#!/bin/sh

DEVICE="/dev/video0"

v4l2-ctl -d "$DEVICE" --set-ctrl=\
brightness=0,\
gamma=0,\
sharpness=2,\
power_line_frequency=1,\
auto_exposure=1,\
exposure_time_absolute=300,\
white_balance_automatic=1,\
saturation=38,\
hue=0,\
backlight_compensation=0
