@echo off
setlocal enabledelayedexpansion
title Qwen3 Voice Factory Installer
echo ===================================================
echo   Qwen3 Voice Factory - Automatic Installer
echo   (AMD RDNA2-RDNA3-RDNA4)
echo ===================================================
echo.
echo [*] Make sure all files from "https://app.mediafire.com/folder/mvrwkgj96lkua" is downloaded into "rocm" folder under "Qwen3-Voice-Factory" folder (this folder), this scripts looks for the files in there.

:: 1. Check if Python exists
if exist "python_env\.\python_env\python.exe" (
    echo [*] Python environment found. Skipping download.
    goto :INSTALL_PACKAGES
)

:: 2. Download Python Portable (3.12.9)
echo [*] [1/4] Downloading Python 3.12 Portable...
if not exist "python_env" mkdir "python_env"
curl -L "https://www.python.org/ftp/python/3.12.9/python-3.12.9-embed-amd64.zip" -o "python_env\python.zip"

:: 3. Unzip
echo [*] [2/4] Extracting Python...
tar -xf "python_env\python.zip" -C "python_env"
del "python_env\python.zip"

:: 4. Patch ._pth file (enable import site)
echo [*] [3/4] Configuring Python...
(
echo python312.zip
echo .
echo import site
) > "python_env\python312._pth"

:: 5. Install Pip
echo [*] [4/4] Installing Pip Package Manager...
curl -L "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
.\python_env\python.exe get-pip.py --no-warn-script-location
del "get-pip.py"

echo [*] Installing PyTorch for RDNA2 (whole 6000 series)
echo.
cd rocm
.\python_env\python.exe -m pip install rocm-7.12.0.dev0.tar.gz rocm_sdk_core-7.12.0.dev0-py3-none-win_amd64.whl rocm_sdk_libraries_gfx103x_all-7.12.0.dev0-py3-none-win_amd64.whl --no-warn-script-location
.\python_env\python.exe -m pip install torch-2.10.0+devrocm7.12.0.dev0-cp312-cp312-win_amd64.whl torchaudio-2.10.0+devrocm7.12.0.dev0-cp312-cp312-win_amd64.whl torchvision-0.25.0+devrocm7.12.0.dev0-cp312-cp312-win_amd64.whl --no-warn-script-location
echo [*] Installing Qwen-TTS and Tools...
.\python_env\python.exe -m pip install --upgrade pip
.\python_env\python.exe -m pip install -r requirements.txt --no-warn-script-location
if errorlevel 1 goto :install_failed
goto :install_complete

:install_failed
echo.
echo ===================================================
echo   Installation Failed!
echo ===================================================
pause
exit /b 1

:install_complete
echo.
echo ===================================================
echo   Installation Complete!
echo   Run "start.bat" to start qwen-tts...
echo ===================================================
pause
exit /b 0