#!/bin/bash

libcamera-vid - -n -t 0 --inline -o - | cvlc stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/rpi-hd}' :demux=h264
