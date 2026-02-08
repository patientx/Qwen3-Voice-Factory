# 🏭 Qwen3 Voice Factory (Optimized for AMD GPUs)

A local, portable GUI for [Qwen3-TTS](https://huggingface.co/Qwen/Qwen3-TTS-12Hz-1.7B-CustomVoice).
Specially optimized for **AMD RDNA2 (only gfx1030 and gfx1032), RNDA3 (7000 series) and RDNA4 /9000 series) **

> **🎯 Perfect for anyone who wants to test these models quickly without dealing with complex node graphs (ComfyUI).**

![Screenshot](screenshot.png)

## Features

- **🎬 Director Mode:** Choose presets (Ryan, Vivian) and provide direction instructions ("Angry", "Whispering").
- **🧬 Voice Cloner:** Upload a short audio file (3-10s) and clone the voice (supports High-Quality ICL Mode).
- **🎨 Voice Creator:** Create completely new voices from scratch using text descriptions (Voice Design).
- **📊 Live Hardware Monitor:** Includes a real-time dashboard to watch your VRAM/RAM/CPU usage while generating.
- **📂 Auto-Save:** Automatically creates an `outputs_audio` folder and saves every generation with a timestamp.
- **Portable:** Does not modify your Windows system. Everything stays contained in one folder.

## Installation

1. Download this repository as a ZIP file and extract it.
2. Double-click on `install.bat`.
   - The script automatically downloads an isolated Python 3.12 environment.
   - It installs pyTorch & rocm (required for AMD GPU support).
3. Wait until the installation is complete.

## Usage

1. Double-click on `start.bat`.
2. Your browser will open automatically at `http://127.0.0.1:7860`.

## Models
Models are automatically downloaded from HuggingFace the first time you use a specific tab (~4GB per model). Please ensure you have enough disk space.

## Requirements

- Windows 10/11
- AMD GPU (starting from rdna2 6600 and up)
- Internet connection (required for installation and model download)

## 🔗 Original Credits & Acknowledgements

This project is a GUI wrapper built to make the amazing work of the **Qwen Team** easily accessible. All AI capabilities are powered by their models.

- Forked from  [Detoxfox4234's original project](https://github.com/Detoxfox4234/Qwen3-Voice-Factory)
- **Base Models:** Developed by [Alibaba Cloud / Qwen Team](https://huggingface.co/Qwen).
- Please support their original work on HuggingFace and GitHub.
## 🤝 Original Support Message from detoxfox4234 

This is a free open-source project. I don't ask for donations.
However, if you want to say "Thanks", check out my profile on **[Spotify](https://open.spotify.com/artist/7EdK2cuIo7xTAacutHs9gv?si=4AqQE6GcQpKJFeVk6gJ06g)**.

A follow or a listen is the best way to support me! 🎧

---
