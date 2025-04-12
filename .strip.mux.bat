@echo off

for /r %%M in (*.mp4) do (
echo %%~nM
"C:\Program Files\MKVToolNix\mkvmerge.exe" -o "%%~pM%%~nM.mkv" "%%~fM"
)

for /r %%M in (*.avi) do (
echo %%~nM
"C:\Program Files\MKVToolNix\mkvmerge.exe" -o "%%~pM%%~nM.mkv" "%%~fM"
)

for /r %%M in (*.webm) do (
echo %%~nM
"C:\Program Files\MKVToolNix\mkvmerge.exe" -o "%%~pM%%~nM.mkv" "%%~fM"
)

for /r %%M in (*.ogv) do (
echo %%~nM
"C:\Program Files\MKVToolNix\mkvmerge.exe" -o "%%~pM%%~nM.mkv" "%%~fM"
)

for /r %%M in (*.mkv) do (
echo %%~nM
"C:\Program Files\MKVToolNix\mkvpropedit.exe" "%%~fM" --edit track:@1 --set name="" --edit track:@2 --set name="" --edit track:@3 --set name="" --tags all:
)

pause