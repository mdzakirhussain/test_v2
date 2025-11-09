FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    xfce4 \
    xfce4-goodies \
    x11-apps \
    novnc \
    websockify \
    tigervnc-standalone-server \
    tigervnc-common \
    && apt-get clean
