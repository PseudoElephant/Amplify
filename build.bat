@echo off
setlocal enabledelayedexpansion

:: Read values from config.json using PowerShell
for /f "delims=" %%I in ('powershell -Command "(Get-Content config.json | ConvertFrom-Json).id"') do set ID=%%I
for /f "delims=" %%I in ('powershell -Command "(Get-Content config.json | ConvertFrom-Json).version"') do set VERSION=%%I

:: Define paths
set "MODS_PATH=%USERPROFILE%\AppData\Roaming\Balatro\Mods"
set "STEAM_DIR=D:\SteamLibrary"
set "RUN_SCRIPT=%STEAM_DIR%\steamapps\common\Balatro\Balatro.exe"

:: Define commands
if "%1"=="clean" goto :clean
if "%1"=="build" goto :build
if "%1"=="install" goto :install
if "%1"=="run" goto :run

echo Usage: build.bat [clean|build|install|run]
exit /b

:clean
echo Cleaning...
rmdir /s /q build 2>nul
rmdir /s /q "%MODS_PATH%\%ID%" 2>nul
exit /b

:build
echo Building...
mkdir build\%ID% 2>nul
xcopy /E /I src build\%ID%\
copy config.json build\%ID%\%ID%.json
cd build
tar -a -c -f "%ID%-%VERSION%.zip" *  >nul
cd ..
rmdir /s /q "build\%ID%" 2>nul
exit /b

:install
call :build
echo Installing...
copy "build\%ID%-%VERSION%.zip" "%MODS_PATH%\%ID%-%VERSION%.zip"
powershell -Command "Expand-Archive -Path '%MODS_PATH%\%ID%-%VERSION%.zip' -DestinationPath '%MODS_PATH%' -Force"
del "%MODS_PATH%\%ID%-%VERSION%.zip" 2>nul
exit /b

:run
echo Cleaning...
call :clean

echo Installing...
call :install

echo Killing existing Balatro processes...
powershell -Command "Get-Process Balatro -ErrorAction SilentlyContinue | Stop-Process -Force"

echo Running Balatro...
call "%RUN_SCRIPT%"