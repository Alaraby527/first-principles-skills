#!/bin/bash
# sync.sh - 把本目录的改动同步到 GitHub
# 用法：在 skills/ 目录下执行 bash sync.sh

set -e

cd "$(dirname "$0")"

# 颜色
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# 检查是否有改动
if git diff --cached --quiet 2>/dev/null && git diff --quiet 2>/dev/null; then
  echo -e "${YELLOW}没有改动，无需提交。${NC}"
  exit 0
fi

# 显示待提交文件
echo -e "${GREEN}待提交的文件：${NC}"
git status --short
echo ""

# 添加所有改动
git add .

# 提交（用时间戳作默认信息）
COMMIT_MSG="${1:-Update: $(date +%Y-%m-%d\ %H:%M:%S)}"
git commit -m "$COMMIT_MSG"

# 推送
echo ""
echo -e "${GREEN}推送到 GitHub...${NC}"
git push origin main

echo ""
echo -e "${GREEN}✅ 同步完成${NC}"
echo "查看：https://github.com/Alaraby527/first-principles-skills"
