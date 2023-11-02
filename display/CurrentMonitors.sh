#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 1920x1080 --rotate right\
    --output DVI-D-0 --mode 1920x1080 --rotate right --left-of DisplayPort-0\
    --output HDMI-A-0 --mode 1920x1080 --rotate right --right-of DisplayPort-0
