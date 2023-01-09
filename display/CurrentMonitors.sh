#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 1920x1080 --pos 1080x0 --rotate right \
    --output HDMI-A-1 --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate right \
    --output DisplayPort-1 --output HDMI-A-0 --mode 1920x1080 --pos 2160x0 --rotate right
