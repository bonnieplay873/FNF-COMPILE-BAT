@echo off

set /p source="Specify the location of the resource: "

cd /d "%source%"

set /p debug="On debug mode? (y/n): "

if /i "%debug%"=="y" (
    set debug_flag=-debug
) else if /i "%debug%"=="n" (
    set debug_flag=
) else (
    echo Invalid input.
    pause
    exit /b 1
)