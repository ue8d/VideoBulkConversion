@echo off

rem
rem mkv -> mp4 一括変換
rem GPU変換
rem

if exist !result.log del !result.log

rem 変換後のmp4の移動PATH
set OUTPUT=
rem 変換元のmkvの移動PATH
set SOURCE=

pushd %0\..
cls

for %%f in (.\*.mkv) do (
  echo start "%%~nxf" to "%%~nf.mp4" >> !result.log
  ffmpeg -i "%%~nxf" -vcodec h264_nvenc -preset fast "%OUTPUT%\%%~nf.mp4"
  move "%%~nxf" "%SOURCE%\%%~nxf"
  echo done "%%~nxf" >> !result.log
)