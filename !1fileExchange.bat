@echo off

rem
rem mkv -> mp4 個別変換
rem GPU変換
rem

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

rem オプション
set OPTIONS=-i
set OPTIONS2=-vcodec h264_nvenc

set INPUT_FILE=
set /P INPUT_FILE="ファイルリンクを入力してください："

rem ファイル名の不要部分カット、良しなに変更
set OUTPUT_FILE=%INPUT_FILE:~10,-5%

rem 拡張子
set EXTENS=.mp4

rem PATH結合
set OUT_PATH="%OUTPUT_FILE%%EXTENS%"

rem 変換後のmp4ファイル移動PATH
set PATH3=""

rem 変換元のmkvファイル移動PATH
set PATH4=""

rem 変換
ffmpeg %OPTIONS% %INPUT_FILE% %OPTIONS2% %OUT_PATH%

rem mkvを移動
move %INPUT_FILE% %PATH3%

rem 変換済ファイルを移動
move %OUT_PATH% %PATH4%

rem pause

exit

