# Simple base
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# --- System + GUI/VNC (mirrors bandgap) ---
RUN apt-get update && apt-get install -y --no-install-recommends \
    libx11-dev libxext-dev libxrender-dev libxpm-dev libxaw7-dev libcairo2-dev libfontconfig1-dev \
    xfce4 xfce4-terminal x11vnc xvfb novnc websockify supervisor dbus-x11 gedit vim \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# --- noVNC desktop via supervisord ---
COPY supervisord.conf /etc/supervisor/conf.d/vnc.conf
# Ensure X socket dir exists at runtime even if non-root runs Xvfb
RUN mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix

EXPOSE 6080

# Run the supervisor (keeps container alive)
CMD ["/usr/bin/supervisord", "-n"]
