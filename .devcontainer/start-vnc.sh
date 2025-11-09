#!/bin/bash

# Kill previous VNC if container restarted
pkill -f "Xtigervnc" || true
pkill -f "websockify" || true

# Start VNC Server
Xtigervnc :1 -geometry 1360x768 -depth 24 -rfbauth ~/.vnc/passwd &

# Start noVNC websocket bridge
websockify --web=/usr/share/novnc 6080 localhost:5901 &
