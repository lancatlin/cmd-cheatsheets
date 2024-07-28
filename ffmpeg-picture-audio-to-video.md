# FFmpeg 圖片 + 音檔 => 影片 Combine Picture and Audio as Video

https://stackoverflow.com/questions/46328198/ffmpeg-image-music-video

```
ffmpeg -loop 1 -framerate 1 -i image.png -i music.mp3 -c:v libx264 -crf 0 -preset veryfast -tune stillimage -c:a copy -shortest output.mkv
```

