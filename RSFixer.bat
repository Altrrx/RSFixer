@echo off
@chcp 65001>nul
title --░▒▓RS FIXER▓▒░--
color 00
color 05
echo Unicode Support... Ready
setlocal EnableDelayedExpansion
pause
cls

REM check for administrator privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo requesting administrator privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~s0' -Verb RunAs"
    exit /b
)

pause

goto logo
:main
echo are you sure about this? (will restart your pc) [y (2) /n (1)/preview resetscreen (4)/test (5)/fix roblox (6)]
CHOICE /C 123456 /M "enter your choice:"
pause

IF ERRORLEVEL 6 GOTO fixroblox
IF ERRORLEVEL 5 GOTO test
IF ERRORLEVEL 4 GOTO rpreview
IF ERRORLEVEL 3 GOTO sans
IF ERRORLEVEL 2 GOTO fixrs
IF ERRORLEVEL 1 EXIT

pause

:rpreview
color
echo [31m██████╗ ███████╗    ███████╗██╗██╗  ██╗███████╗██████╗ 
echo [33m██╔══██╗██╔════╝    ██╔════╝██║╚██╗██╔╝██╔════╝██╔══██╗
echo [31m██████╔╝███████╗    █████╗  ██║ ╚███╔╝ █████╗  ██████╔╝
echo [33m██╔══██╗╚════██║    ██╔══╝  ██║ ██╔██╗ ██╔══╝  ██╔══██╗
echo [31m██║  ██║███████║    ██║     ██║██╔╝ ██╗███████╗██║  ██║
echo [33m╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝	
echo This is a preview. your system will NOT restart.
pause >nul
goto logo

:test
echo [34m = ^[[34m blue ( E[34m )
echo [31m = ^[[31m red ( E[31m )
echo [35m = ^[[35m purple ( E[35m )
echo [33m = ^[[33m yellow ( E[33m )
echo [90m = ^[[90m gray (( E[90m )
echo [30m = ^[[30m black ( E[30m )
echo [97m = ^[[97m white ( E[97m )
echo [96m = ^[[96m cyan ( E[96m )
echo [94m = ^[[94m bluish cyan ( E[94m )
echo Press any key to go back to main interface again.
pause >nul
goto logo

:sans
color 07
cls
echo [97m heya, im sans, sans the skeleton.
echo ░░░░░░░░░▒▒▒███████████████▒▒▒▒░░░░░░░░
echo ░░░░░░░▒▓███▒░░░░░░░░░░░░░▒▓██▓▒▒░░░░░░
echo ░░░░░░▒█▓░░░░░░░░░░░░░░░░░░░░░▓█▒░░░░░░
echo ░░░░▒▒▓█▓░░░░░░░░░░░░░░░░░░░░░▓█▓▒▒░░░░
echo ░░░░▒██░░▒▒▓▓▓▓▒░░░░░░░▒▓▓▓▓▒▒░░██▒░░░░
echo ░░░░▒██░░▒█████▓░░░░░░░▓█████▒░░██▒░░░░
echo ░░░░▒██░░▒█████▓░░███░░▓█████▒░░██▒░░░░
echo ░░░░░▒▓█▓░▒▒▒▒▒▒▓█████▓▒▒▒▒▒▒▒▓█▓▒▒░░░░
echo ░░░░▒███▓▒▓▓▒░░░▒▓▓▓▓▓▒░░░▒▓▓▒▓███▒░░░░
echo ░░░░▒██▒▒▒███████████████████▒▒▒██▒░░░░
echo ░░░░▒██░░░▒▒█▓▒▓█▒▓█▓▒█▓▒▓█▒▒░░░██▒░░░░
echo ░░░░░░▒███▒░░▓███████████▓░░▒███▒░░░░░░
echo ░░░▒▒████████▓▒▒▒▒▒▒▒▒▒▒▒▓████████▒▒░░░
echo ░▒▒▓█▓▓█████████████████████████▓▓██▒▒░
echo ░▒███▓▓█▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▓█▓▓███▓░
echo ▓▓█▓▓█████▓▓▓███▓▓▓▓▓▓▓▓██▓▓▓█████▓▓█▓▓
echo ██▓▓▓▓▓▓███▓▓██▓░░▒▓▒░░▓██▓▓███▓█▓▓▓▓██
echo ██▓▓▓▓▓▓▓▓██▓███▓▒░░░▒▓███▓██▓▓▓▓▓▓▓▓██
echo ▒▓██▓▓▓▓███▓▓██▓▒░░░░░▒▓██▓▓▓██▓▓▓▓██▓▒
echo ░░▒▓███▓██▓▓▓█████████████▓▓▓██▓███▓▒░░
echo ░░░░▒█████▓▓▓▓████████████▓▓▓█████▒░░░░
echo ░░░░░▒▒█████████████████████████▒▒░░░░░
echo ░░░░▒█████████████████████████████▒░░░░
echo ░░░░▒▓████████████▓░▓████████████▓▒░░░░
pause >nul
echo i guess this is goodbye kid. well, im going to grillby's
pause >nul
color 05
cls
goto logo

:fixrs
color 05
echo Loading...
timeout 2 >nul
color 17
netsh winsock reset
ipconfig /flushdns 
ipconfig /release 
ipconfig /renew 
netsh int ip reset
echo Do you TRULY wanna reset? (close if not now, press any key if you DO want to reset now)
pause >nul
color 40
echo Last chance...
pause >nul
timeout /t 5 && shutdown -r
exit /b

:fixroblox
color 06
echo Fix
