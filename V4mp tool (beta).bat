@echo off
color 0A
echo.
echo ============================================
echo         V4mp tool v0.0.1 Beta
echo ============================================
set /p ip_address=
cls
echo.
echo ============================================
echo     Pinging %ip_address%...
echo ============================================
ping -t %ip_address%
echo.
echo ============================================
echo Now retrieving information about %ip_address%...
echo ============================================
echo.
color 0B
echo ============================================
echo DNS Information:
echo ============================================
nslookup %ip_address%
echo.
color 0E
echo ============================================
echo Traceroute Information:
echo ============================================
tracert %ip_address%
echo.
color 0D
echo ============================================
echo Geolocation and Additional Information:
echo ============================================
powershell -Command "(Invoke-WebRequest -Uri 'http://ip-api.com/json/%ip_address%').Content"
echo.
color 0A
echo ============================================
echo To stop pinging, press Ctrl + C.
echo ============================================
pause
