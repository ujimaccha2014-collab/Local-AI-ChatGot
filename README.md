# Local-AI-ChatGot

## English

I am a Japanese developer, and I have confirmed that this project works with local LLMs using Llama.cpp.

No special permission is required to use this project.
Simply download the required model file and run it locally.

### Model Download

Qwen:
https://huggingface.co/bartowski/Qwen2.5-Coder-7B-Instruct-GGUF

DeepSeek Coder:
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

---

## 日本語

私は日本人の開発者で、このプロジェクトがローカルLLMおよび Llama.cpp で動作することを確認しています。

このプロジェクトを利用するために特別な許可は必要ありません。
必要なモデルファイルをダウンロードしてローカルで実行してください。

### モデルダウンロード

Qwen
https://huggingface.co/bartowski/Qwen2.5-Coder-7B-Instruct-GGUF

DeepSeek Coder
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
