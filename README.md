# Raspberry Pi High Quality Camera
A basic service for starting the RTSP stream for a RPi HQ Camera

### Streaming RTSP
Setup video stream on RPi
``` bash
libcamera-vid -t 0 --inline -o - | cvlc stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/rpi-hd}' :demux=h264
```

### Viewing RTSP Stream
Setup ffplay to connect to the stream
``` bash
ffplay rtsp://ghoti.toomanyprojects.dev:8554/rpi-hd -vf "setpts=N/30" -fflags nobuffer -flags low_delay -framedrop
```

### Image Capture from RTSP Stream
Snag a single, timestamped jpg
```bash
ffmpeg -y -i rtsp://ghoti.toomanyprojects.dev:8554/rpi-hd -vframes 1 /Users/davin/Captures/ghoti_`date +%s`.jpg
```

