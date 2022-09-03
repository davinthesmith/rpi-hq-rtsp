#!/bin/zsh

ffmpeg -y -i rtsp://ghoti.toomanyprojects.dev:8554/rpi-hd -vframes 1 /Users/davin/Captures/ghoti_`date +%s`.jpg
