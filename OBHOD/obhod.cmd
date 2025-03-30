@echo off
chcp 65001
cls
if /i "%comspec% /c %~0 " equ "%cmdcmdline:"=%" echo Вы запустили скрипт НЕ через консоль. Запустите через терминал. && pause

echo Проверка наличия файлов Discord Drover...
set "drover_found=0"
for /d %%i in ("%LOCALAPPDATA%\Discord\app-*") do (
    if exist "%%i\drover.ini" if exist "%%i\version.dll" (
        echo Найдены файлы Discord Drover в %%i
        set "drover_found=1"
    )
)

if "%drover_found%"=="0" (
    echo Файлы Discord Drover не найдены.
    cd drover
    echo Запуск Discord Drover...
    ".\drover.exe"
    cd ..
)

echo Запуск Tor для обхода блокировки Discord...
cd tor
".\tor.exe" -f ".\torrc"