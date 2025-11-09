FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    novnc \
    websockify \
    x11-apps \
    && apt-get clean
