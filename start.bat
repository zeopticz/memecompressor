@echo off
title Main Menu - Meme Compressor by zeopticz
:Home
cls
echo NOTE: If you are running the program for the first time, select 8 first to install FFMPEG. Otherwise, the program will not work.
echo =====================
echo MEME COMPRESSOR
echo =====================
echo 1. Compress to 32kbps
echo 2. Compress to 8kbps
echo 3. Compress to 4kbps (RECOMMENDED)
echo ======================
echo EXPERIMENTAL FEATURES
echo ======================
echo 4. Compress to 2kbps
echo 5. Compress to 1kbps
echo 6. Custom value
echo ========TOOLS=========
echo 7. Exit.
echo 8. Download ffmpeg.exe - RUN THAT IF YOU ARE RUNNING THIS PROGRAM FOR THE FIRST TIME!
echo ======================
set /p Home= Your choice (1-8): 
if %Home%== 1 goto 32
if %Home%== 2 goto 8
if %Home%== 3 goto 4
if %Home%== 4 goto 2
if %Home%== 5 goto 1
if %Home%== 6 goto custom
if %Home%== 7 goto exit
if %Home%== 8 goto ffmpeg
goto Home




:ffmpeg
cls
title yes/no - Meme Compressor
echo FFMPEG needs to be downloaded. To make this program work, you should answer "yes".
set/p ffmpeg= This operation require near 100MB of disk space. Continue? (yes/no): 
if %ffmpeg%== yes goto ffmpegconfirm
if %ffmpeg%== no goto warn
goto ffmpeg

:warn
cls
title Warning! - Meme Compressor
echo This program will not work without ffmpeg. Press "Enter" and run this operation again.
pause
goto Home

:ffmpegconfirm
cls
title Downloading FFMPEG. - Meme Compressor
echo Downloading FFMPEG
echo Using PowerShell. Don't be scared if the powershell process appears.
echo Starting download. This program will notify you when its done, don't close any windows or the process will fail.
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://srv-store1.gofile.io/download/s8E1Xk/ffmpeg.exe', 'ffmpeg.exe')"
echo Download finished.
echo Press "Enter" to go to the main menu.
pause
goto Home
:exit
cls
echo Exiting...
exit
:32
cls
title Compressing to 32kbps - Meme Compressor
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work
pause
echo Starting compressing
ffmpeg.exe  -i song.mp3 -ab 32k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home
:8
cls
title Compressing to 8kbps - Meme Compressor
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work
pause
echo Starting compressing
ffmpeg.exe  -i song.mp3 -ab 8k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home
:4
cls
title Compressing to 4kbps - Meme Compressor
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work
pause
echo Starting compressing
ffmpeg.exe  -i song.mp3 -ab 4k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home
:2
cls
title Compressing to 2kbps - Meme Compressor
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work
pause
echo Starting compressing
ffmpeg.exe  -i song.mp3 -ab 2k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home
:1
cls
title Compressing to 1kbps - Meme Compressor
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work
pause
echo Starting compressing
ffmpeg.exe  -i song.mp3 -ab 1k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home
:custom
cls
title Compressing to ?kbps - Meme Compressor
echo ==============================================================================
echo Choose the bitrate to compress. (example: 3 - will compress the file to 3kbps)
echo ONLY NUMBERS (else will not work).
echo ==============================================================================
set/p  custom= Your choice (any bitrate to compress to): 
echo ==============================================================================
echo Put song.mp3 (rename it if your file dosent match the name of song.mp3) file in the same directory where this script is. When you are done, press "Enter" key on your keyboard.
echo Make sure that ffmpeg.exe is in the same directory as the start.bat file. Otherwise, the program will not work.
pause
title Compressing to %custom%kbps - Meme Compressor
echo Compressing song.mp3 to %custom%kbps.
ffmpeg.exe -i song.mp3 -ab %custom%k compressed_song.mp3
cls
echo Process done. Your file should be named "compressed_song.mp3"
echo Press any key to go back to the main menu.
pause
goto Home