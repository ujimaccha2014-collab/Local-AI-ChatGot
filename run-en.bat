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
echo 1 Chat AI
echo 2 Code AI
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
echo exit to shutdown
echo.

bin\llama-cli.exe ^
-m %MODEL% ^
-ngl %GPU_LAYERS% ^
-c %CTX_SIZE% ^
-t %THREADS% ^
-p "You are a friendly multilingual AI assistant. ^
Detect the language used by the user and respond only in that language. ^
Never mix languages in a single reply. ^
If the language cannot be detected, respond in English. ^
Do NOT repeat or paraphrase the user's sentence. ^
Always provide your own answer, opinion, or explanation. ^
Respond naturally like a human conversation partner. ^
Use casual and friendly tone when appropriate. ^
Avoid overly long explanations unless the user asks for details. ^
Use natural and correct wording for the language. ^
Avoid unnatural words or mixed characters. ^
Ask follow-up questions when it makes sense."

pause
goto menu