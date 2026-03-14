# Local-AI-ChatGot

## English

A simple terminal-based local AI chat system powered by llama.cpp and GGUF models.

## Setup

Before running the AI, please run:

setup.bat

This will automatically install the required files and prepare the environment.

After setup is complete, run:

run-ja.bat (Japanese users)

or

run-en.bat (Other users)


I am a Japanese developer, and I have confirmed that this project works with local LLMs using Llama.cpp.

No special permission is required to use this project.
Simply download the required model file and run it locally.

### Model Download

- Qwen  
  https://huggingface.co/bartowski/Qwen2.5-Coder-7B-Instruct-GGUF

- DeepSeek Coder  
  https://huggingface.co/LoneStriker/DeepSeek-Coder-V2-Lite-Instruct-GGUF

After downloading:

Rename the files as follows and place them in the **models** folder.

Qwen → chat.gguf
DeepSeek → coder.gguf

### How to Run

Japanese users:
run `run-ja.bat`

Other users:
run `run-en.bat`

### Settings

If you want to change the behavior of the AI, edit:

`settings.cfg`

Recommended values:

Chat AI (conversation)

GPU_LAYERS : 30–40
CTX_SIZE : 4096
THREADS : 6–8
TEMP : 0.6–0.8
TOP_P : 0.9
REPEAT_PENALTY : 1.1

Code AI (programming)

Lower TEMP → more stable code
Larger CTX_SIZE → longer code support
Lower TOP_K → better accuracy

## Folder Structure

ChatGot/
├ models/
│   ├ chat.gguf
│   └ coder.gguf
├ setup.bat
├ run-ja.bat
├ run-en.bat
└ README.md

## Requirements

To run this project, you need:

* Windows 10 / 11
* GPU (Recommended: NVIDIA GPU)
* CUDA support (for GPU acceleration)
* llama.cpp executable
* A GGUF model file

Tested environment:

* GPU: NVIDIA GeForce RTX 3060 (12GB VRAM)
* RAM: 16GB
* Model size: 7B (Qwen / DeepSeek)


---

## 日本語

llama.cpp と GGUF モデルを使用したシンプルなローカルAIチャット環境です。

## セットアップ

AIを起動する前に、まず

setup.bat

を実行してください。

必要なファイルや環境が自動でセットアップされます。

セットアップ完了後に

run-ja.bat（日本語）

または

run-en.bat（英語）

を実行してください。


私は日本人の開発者で、このプロジェクトがローカルLLMおよび Llama.cpp で動作することを確認しています。

このプロジェクトを利用するために特別な許可は必要ありません。
必要なモデルファイルをダウンロードしてローカルで実行してください。

### モデルダウンロード

- Qwen  
  https://huggingface.co/bartowski/Qwen2.5-Coder-7B-Instruct-GGUF

- DeepSeek Coder  
  https://huggingface.co/LoneStriker/DeepSeek-Coder-V2-Lite-Instruct-GGUF

ダウンロード後、以下のように名前を変更し **models フォルダ** に入れてください。

Qwen → chat.gguf
DeepSeek → coder.gguf

### 起動方法

日本人:
`run-ja.bat`

それ以外:
`run-en.bat`

### 設定

AIの挙動を変更したい場合は

`settings.cfg`

を編集してください。

目安:

Chat AI（会話）

GPU_LAYERS : 30〜40
CTX_SIZE : 4096
THREADS : 6〜8
TEMP : 0.6〜0.8
TOP_P : 0.9
REPEAT_PENALTY : 1.1

Code AI（プログラミング）

TEMPを低く → コードが安定
CTX_SIZEを大きく → 長いコード対応
TOP_Kを低く → 精度重視



## フォルダ構成

ChatGot/
├ models/
│   ├ chat.gguf
│   └ coder.gguf
├ setup.bat
├ run-ja.bat
├ run-en.bat
└ README.md

## 必要環境

このプロジェクトを実行するために以下の環境が必要です。

* Windows 10 / 11
* GPU（推奨：NVIDIA GPU）
* CUDA（GPU高速化用）
* llama.cpp 実行ファイル
* GGUF形式のモデルファイル

動作確認環境

* GPU: NVIDIA GeForce RTX 3060（VRAM 12GB）
* RAM: 16GB
* モデルサイズ: 7B（Qwen / DeepSeek）

