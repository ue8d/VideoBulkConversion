# VideoBulkConversion
## 開発環境
Windows 10 Pro

[ffmpeg-master-latest-win64-gpl](https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip)

## 前提条件
- ffmpegにPathが通っている

## 使い方
mkv -> mp4へ変換する設定にしています。

基本はソースを見て良しなに変更してください。。

### !exchange.bat
batファイルを起動で、同一ディレクトリにあるファイルを一括変換

例：
```
rem 変換後のmp4の移動PATH
set OUTPUT=I:\movie\
rem 変換元のmkvの移動PATH
set SOURCE=H:\変換済mkv
```

### !1fileExchange.bat
batファイル起動後に変換したい動画のファイルパスを入力してEnter！
