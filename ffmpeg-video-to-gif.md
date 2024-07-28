# FFmpeg 影片轉為 GIF Convert to GIF

```
ffmpeg -ss 30 -t 3 -i input.mp4 -vf "fps=10,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 output.gif
```

參數說明

+ -i input.mp4：輸入檔名
+ output.gif：輸出檔名
+ -ss：起始時間
+ -t：結束時間
+ scale：目標影像寬度

https://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality

