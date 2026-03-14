@echo off
chcp 65001 >nul
title ChatGot AI
cd /d %~dp0

if not exist history mkdir history

:: settings.cfg
if not exist settings.cfg (
echo set CHAT_MODEL=models\chat.gguf>settings.cfg
echo set CODE_MODEL=models\coder.gguf>>settings.cfg
echo set GPU_LAYERS=35>>settings.cfg
echo set CTX_SIZE=4096>>settings.cfg
echo set THREADS=8>>settings.cfg
)

for /f "delims=" %%i in (settings.cfg) do %%i

:menu
cls
echo ==========================
echo        ChatGot AI
echo ==========================
echo.
echo 1 チャット
echo 2 コーディング
echo 3 Exit
echo.

set /p mode=Select:

if "%mode%"=="1" set MODEL=%CHAT_MODEL%&goto chat
if "%mode%"=="2" set MODEL=%CODE_MODEL%&goto chat
if "%mode%"=="3" exit

goto menu


:chat
cls
echo ==========================
echo        Chat Started
echo ==========================
echo.
echo exit で終了
echo.

bin\llama-cli.exe ^
-m %MODEL% ^
-ngl %GPU_LAYERS% ^
-c %CTX_SIZE% ^
-t %THREADS% ^
-p "You are a friendly AI that only speaks Japanese. Always answer in Japanese."

pause
goto menu