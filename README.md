# Claude Code NVIDIA Proxy

让 Claude Code 使用 NVIDIA 提供的免费 API 来运行，替代 Anthropic 付费模型。

## 功能特点

- 将 Claude Code 的 Anthropic API 请求转换为 OpenAI 格式，转发到 NVIDIA
- 使用 NVIDIA 免费的 Mistral-Nemotron 模型，零成本运行 Claude Code
- 支持流式响应，保持原生的交互体验
- 自动伪装模型信息，Claude Code 无需任何修改

## 快速开始

1. 克隆本项目
2. 确保你有 NVIDIA API Key（免费申请：build.nvidia.com）
3. 修改脚本中的 `NVIDIA_API_KEY` 和 `NVIDIA_MODEL`
4. 运行代理：`python proxy.py`
5. 设置环境变量后启动 Claude Code

```bash
set ANTHROPIC_BASE_URL=http://127.0.0.1:5000
set ANTHROPIC_AUTH_TOKEN=dummy
claude
