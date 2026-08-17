#!/usr/bin/env bash
set -euo pipefail

# ⚠️ 原作者已更新，本项目不再演进，建议使用原作者项目：
#   https://github.com/yjh051108/dsh-routing-suite
# 原作者预设按模型路由，理论上适用于 opencode-go + deepseek-v4-flash。
# 本脚本仅供需要保留旧版行为的用户使用；新用户请直接安装原作者方案。

TARGET="${HOME}/.dsh/.agent-presets/router-flash"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/preset"

echo "⚠️  注意：原作者已更新，本项目不再演进。"
echo "    推荐直接使用原作者 dsh-routing-suite：https://github.com/yjh051108/dsh-routing-suite"
echo "    原作者预设按模型路由，理论上适用于 opencode-go。"
echo ""
echo "    继续安装旧版本 preset 请按任意键，Ctrl-C 取消。"
read -r -n 1 -s -p ""
echo ""

if [ ! -f "${SRC}/agent.cordis.yml" ]; then
  echo "错误：找不到 preset/agent.cordis.yml，请在仓库根目录运行本脚本" >&2
  exit 1
fi

mkdir -p "${HOME}/.dsh/.agent-presets"
if [ -d "${TARGET}" ]; then
  echo "已存在 ${TARGET}，将覆盖其中文件"
fi
cp -r "${SRC}" "${TARGET}"

echo "✅ 已安装到 ${TARGET}"
echo ""
echo "接下来请手动编辑 ~/.dsh/settings.yaml，确认包含："
echo ""
echo "  agent-default-model:"
echo "    provider: opencode-go"
echo "    model: deepseek-v4-flash"
echo "    reasoningEffort: max"
echo "  agent-presets:"
echo "    default: router-flash"
echo ""
echo "然后重启 dsh。"
