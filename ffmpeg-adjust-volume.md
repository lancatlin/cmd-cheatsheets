# FFmpeg 調整影片音量 Adjust Volume

https://trac.ffmpeg.org/wiki/AudioVolume

```
ffmpeg -i input.wav -filter:a "volume=1.5" -c:v copy output.wav
```

