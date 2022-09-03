#!/bin/bash

libcamera-vid -n --width 1920 --height 1080 -t 0 --inline -o - | cvlc stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/rpi-hd}' :demux=h264
