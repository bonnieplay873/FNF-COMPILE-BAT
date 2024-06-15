@echo off

set /p source="Source: "

cd /d "%source%"

set /p debug="On debug mode? (y/n): "

if /i "%debug%"=="y" (
    lime test windows -debug
) else if /i "%debug%"=="n" (
    lime test windows
) else (
    echo Invalid input. Please enter y or n.
    pause
    exit /b 1
)