#!/bin/bash
set -e

echo "🔧 配置 Open Graph 开发环境..."

# 检查是否在 Git 仓库中
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ 错误：请在 Git 仓库目录中运行此脚本"
    exit 1
fi

# 检查 upstream 是否已存在
if git remote get-url upstream > /dev/null 2>&1; then
    echo "✅ upstream 远程已配置"
    git remote -v | grep upstream
else
    echo "📡 添加 upstream 远程..."
    git remote add upstream https://github.com/graphif/project-graph.git
    git fetch upstream
    echo "✅ upstream 远程配置完成"
fi

# 显示当前配置
echo ""
echo "📋 当前远程配置："
git remote -v

echo ""
echo "✅ 设置完成！"
echo ""
echo "常用命令："
echo "  • 同步上游更新：git fetch upstream && git merge upstream/main"
echo "  • 查看上游差异：git diff upstream/main"
echo "  • 查看远程配置：git remote -v"