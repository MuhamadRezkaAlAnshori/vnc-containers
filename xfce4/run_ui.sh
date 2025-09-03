#!/bin/bash

Xvfb $DISPLAY -screen 0 "${DISPLAY_WIDTH}x${DISPLAY_HEIGHT}x${DISPLAY_DEPTH}" &
sleep 1
x11vnc -display $DISPLAY -forever -nopw -quiet -listen 0.0.0.0 -rfbport "$VNC_PORT" -xkb &
sleep 1
startxfce4 &
sleep 1
/usr/share/novnc/utils/novnc_proxy --vnc "127.0.0.1:$VNC_PORT" --listen "0.0.0.0:$NOVNC_PORT" &
sleep 1
