@echo off
echo Du willst es löschen?
pause
echo Du Nigga
timeout /t 3 >nul
set "startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "fileToDelete=startup.bat"

if exist "%startupFolder%\%fileToDelete%" (
    del "%startupFolder%\%fileToDelete%"
    echo Datei wurde gelöscht.
shutdown /r t 1
) else (
    echo Datei existiert nicht.
)
