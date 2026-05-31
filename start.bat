@echo off

:: 1. 新开一个CMD窗口，运行代理
start "Claude-Code-proxy.py" cmd /k "py -3.10 Claude-Code-proxy.py"

:: 2. 等待 0.3 秒
ping -n 1 -w 300 127.0.0.1 >nul

:: 3. 本窗口设置环境变量并启动 claude
set ANTHROPIC_BASE_URL=http://127.0.0.1:5000
set ANTHROPIC_AUTH_TOKEN=dummy
set ANTHROPIC_MODEL=mistralai/mistral-nemotron
claude

pause
