# ffmpeg 調整影片解析度 Adjust Resolution

```
ffmpeg -i src.mp4 -vf scale=$width:$height dest.mp4
```

```
ffmpeg -i input.mp4 -vf scale=-1:720 output.mp4
```

https://ottverse.com/change-resolution-resize-scale-video-using-ffmpeg/

