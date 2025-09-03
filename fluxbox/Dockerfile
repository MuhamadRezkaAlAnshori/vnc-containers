FROM ubuntu:24.04

ENV TZ="UTC"

RUN apt update && \
    apt install -y xvfb x11vnc fluxbox novnc websockify xterm

COPY run_ui.sh /opt

ENV DISPLAY=:1
ENV DISPLAY_WIDTH=1280
ENV DISPLAY_HEIGHT=800
ENV DISPLAY_DEPTH=24
ENV VNC_PORT=5900
ENV NOVNC_PORT=6900
