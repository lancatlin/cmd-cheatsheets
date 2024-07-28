# FFmpeg 更換影片音軌 Change audio track

https://superuser.com/questions/1137612/ffmpeg-replace-audio-in-video

```
ffmpeg -i v.mp4 -i a.wav -c:v copy -map 0:v:0 -map 1:a:0 new.mp4
```

