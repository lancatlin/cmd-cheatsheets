## ffmpeg 將雙聲道影片轉為單聲道 Stereo to Mono

當你錄影片時只有其中一個聲道有聲音時很好用

```
ffmpeg -i src.mkv -c:v copy -ac 1 dest.mkv
```

沒試過其他檔案類型，但應該沒差。

