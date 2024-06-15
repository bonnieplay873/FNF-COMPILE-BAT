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

set /p build="On Build Mode? (y/n): "

if /i "%build%"=="y" (
    if defined debug_flag (
        lime build windows %debug_flag%
    ) else (
        lime build windows
    )
) else if /i "%build%"=="n" (
    if defined debug_flag (
        lime test windows %debug_flag%
    ) else (
        lime test windows
    )
) else (
    echo Invalid input. Please enter y or n.
    pause
    exit /b 1
)