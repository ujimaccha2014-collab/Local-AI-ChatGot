@echo off
title ChatGot Setup

echo ==========================
echo      ChatGot Setup
echo ==========================
echo.

echo Creating folders...
if not exist models mkdir models
if not exist history mkdir history
if not exist bin mkdir bin

echo.
echo Downloading llama.cpp...

powershell -Command "Invoke-WebRequest https://github.com/ggerganov/llama.cpp/releases/latest/download/llama-binaries-win-cuda-cu12.zip -OutFile llama.zip"

echo Extracting...

powershell -Command "Expand-Archive llama.zip -DestinationPath bin -Force"

del llama.zip

echo.
echo Setup complete!
echo Now download the models and run run-ja.bat or run-en.bat

pause