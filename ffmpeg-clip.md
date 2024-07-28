# FFmpeg 截取影片片段 Take a clip

此指今幫你將影片中一段時間提取出來，不進行重編碼，效率飛快

Syntax:

```
ffmpeg -ss [start_time] -i [source] -to [video_length] -c copy [dest]
```

Example:
要截取 source.mp4 的 00:15:00 到 00:20:25，存檔到 output.mp4

```
ffmpeg -ss 00:15:00 -i source.mp4 -to 00:5:25 -c copy output.mp4
```

注意 -to 輸入的是時長而非終點，其原因為 ffmpeg 會將 -ss 的時間定為新的原點。

