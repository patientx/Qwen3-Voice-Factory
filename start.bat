@echo off
title Qwen3 Voice Factory (AMD GPU Optimized)
echo Starting App...
echo (ignore flash-attention and SOX errors below)

if not exist "python_env\python.exe" (
    echo ERROR: Python environment not found!
    echo Please run 'install.bat' first.
    pause
    exit
)

.\python_env\python.exe app.py
pause

