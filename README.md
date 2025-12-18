# Open Graph

基于 [Project Graph](https://github.com/graphif/project-graph) 项目的二次开发版

旨在去除遥测，专注于思维导图的核心功能。

1. 删除项目中 `.cursor`, `.vscode`, `.trae` 等 ide 的文件夹
2. 关闭项目签名，避免报错
3. 删除自动更新功能
4. 删除 AI 相关功能
5. 删除非功能界面

> [!NOTE]
> 
> 本仓库不提供已编译好的项目，自己从源代码层面构建的程序才更可信。
>
> 不过为了方便使用，我会为您提供自动化构建的脚本，免去一行行输入命令的麻烦。

## 构建项目

### 自己输入命令构建

```shell
# 安装 rust
scoop install rustup
# 安装 pnpm 包管理器
scoop install pnpm

# 下载项目依赖
pnpm install
# 编译项目
pnpm run build:ci
```

### 使用脚本构建

**windows**

```pwsh
pwsh .\tools\build.ps1
```
