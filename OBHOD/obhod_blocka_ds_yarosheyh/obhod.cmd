@echo off
chcp 65001
cls
if /i "%comspec% /c %~0 " equ "%cmdcmdline:"=%" echo Вы запустили скрипт НЕ через консоль. Запустите через терминал. && pause
cd tor
".\tor.exe" -f ".\torrc"