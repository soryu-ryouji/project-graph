Write-Host "🔧 配置 Open Graph 开发环境..." -ForegroundColor Green

# 检查是否在 Git 仓库中
try {
    git rev-parse --git-dir | Out-Null
} catch {
    Write-Host "❌ 错误：请在 Git 仓库目录中运行此脚本" -ForegroundColor Red
    exit 1
}

# 检查 upstream 是否已存在
try {
    $upstreamUrl = git remote get-url upstream 2>$null
    Write-Host "✅ upstream 远程已配置:  $upstreamUrl" -ForegroundColor Green
} catch {
    Write-Host "📡 添加 upstream 远程..." -ForegroundColor Yellow
    git remote add upstream https://github.com/graphif/project-graph.git
    git fetch upstream
    Write-Host "✅ upstream 远程配置完成" -ForegroundColor Green
}

# 显示当前配置
Write-Host ""
Write-Host "📋 当前远程配置：" -ForegroundColor Cyan
git remote -v

Write-Host ""
Write-Host "✅ 设置完成！" -ForegroundColor Green
Write-Host ""
Write-Host "常用命令："
Write-Host "  • 同步上游更新：git fetch upstream; git merge upstream/main"
Write-Host "  • 查看上游差异：git diff upstream/main"
Write-Host "  • 查看远程配置：git remote -v"