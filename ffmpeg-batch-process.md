# FFmpeg 批次轉檔整個資料夾所有影片 Batch Processing

```
#!/bin/bash

shopt -s globstar
DEST=/home/wancat/Nextcloud/Family/Video

for i in fm_video/**/*.MOV; do
        OUTPUT=$DEST/${i%.*}.mp4
        echo "$i -> $OUTPUT"
        mkdir -p "${OUTPUT%/*}"
        ffmpeg -i "$i" "$OUTPUT"
done
```

