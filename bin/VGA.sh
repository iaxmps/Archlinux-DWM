#!/bin/sh

if [ $(cat /sys/class/drm/card0-VGA-1/status) = "connected" ]; then
	exec ~/.screenlayout/test.sh
else
	xrandr --auto
fi
