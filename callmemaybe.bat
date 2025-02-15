@echo off
echo Startup Script v1.1 extra build
:: Starting Startup script ...
powershell -Command (New-Object Media.SoundPlayer "C:\Windows\Media\notify.wav").PlaySync()
:: Playing Notification Sound
start chrome.exe https://www.rallypizzeria.de/backend/restaurantadmin/dashboardrestaurant
::Starting important task ...
echo Task completed
:: Additional Tasks
start chrome.exe https://www.lieferando.de/speisekarte/pizzeria-rally-giessen
echo  Completed. Now exiting
:: Built by  Harri Wailand ,05.02.25 
