#!/bin/sh

DEVICE="/dev/video0"

v4l2-ctl -d "$DEVICE" --set-ctrl=\
brightness=1,\
contrast=0,\
saturation=38,\
hue=0,\
white_balance_automatic=1,\
gamma=100,\
power_line_frequency=1,\
sharpness=2,\
backlight_compensation=0,\
auto_exposure=3,\
exposure_time_absolute=78,\
exposure_dynamic_framerate=1
