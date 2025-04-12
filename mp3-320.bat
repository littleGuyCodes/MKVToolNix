@echo off

for /r %%M in (*.flac, *.m4a, *.ogg) do (
echo %%~nM
ffmpeg -i  "%%~fM" -ab 320k -map_metadata 0 -id3v2_version 3 "%%~pM%%~nM.mp3"
)

pause