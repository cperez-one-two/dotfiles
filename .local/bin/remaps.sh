#!/bin/sh

# Kill any running instances
killall -q xinputd

# Wait for other processes to stop
while pgrep -u $UID -x xinputd >/dev/null; do sleep 1; done

# Remaps
xinputd setxkbmap -option caps:swapescape -option altwin:swap_lalt_lwin
