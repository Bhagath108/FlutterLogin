@echo off

REM Change directory to your Flutter project folder
cd /d "C:\Users\bhaga\StudioProjects\hai"

REM Pull the latest changes from GitHub main branch
echo Pulling latest code from GitHub...
git pull origin main

REM Get Flutter dependencies
echo Getting Flutter packages...
flutter pub get

REM Build the Windows executable
echo Building flutter web...
flutter build web

echo Build complete!

pause
