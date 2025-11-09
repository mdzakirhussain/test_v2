FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update && apt-get install -y \
    supervisor \
    xvfb \
    x11vnc \
    novnc websockify \
    xfce4 xfce4-terminal \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy supervisord config
COPY supervisord.conf /etc/supervisor/supervisord.conf
