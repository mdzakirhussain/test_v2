#!/usr/bin/env bash
set -euo pipefail

export DISPLAY="${DISPLAY:-:1}"

mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix || true

pgrep Xvfb >/dev/null || Xvfb :1 -screen 0 1600x900x24 &

pgrep -f xfce4-session >/dev/null || (nohup startxfce4 >/tmp/xfce.log 2>&1 &)

pgrep x11vnc >/dev/null || x11vnc -display :1 -forever -shared -rfbport 5901 -nopw -listen 0.0.0.0 &

pgrep -f "websockify .*6080" >/dev/null || websockify --web=/usr/share/novnc 0.0.0.0:6080 localhost:5901 &

exit 0
