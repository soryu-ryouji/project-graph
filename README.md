# Open Graph

## 项目说明

本项目是基于 [Project Graph](https://github.com/graphif/project-graph) 的社区分支版本（fork），专注于：

- 精简版本，移除了 AI 功能
- 注重隐私，移除了遥测功能
- 简洁界面，移除了捐助相关 UI

本项目会定期同步原项目的更新，以获得：
- 🐛 Bug 修复
- ✨ 新功能（如果符合精简理念）
- 🔒 安全更新

**同步策略：**

- 定期合并上游的 commits
- 保持核心功能与原项目一致
- 仅保留精简化的差异部分

感谢原作者 [graphif](https://github.com/graphif) 的工作。

## 为什么做这个分支？

- 对日常使用的项目有洁癖，希望保证界面和功能的简洁

**如果您认可原项目，请考虑：**

- ⭐ 为 [原项目](https://github.com/graphif/project-graph) 点星
- 💝 [支持原作者](https://graphif.dev/donate)

## 构建项目

> [!NOTE]
> 
> 本项目不提供预编译版本，因为我认为自己从源代码层面构建的程序才更可信。
>
> 不过为了方便使用，我会为您提供自动化构建的脚本，免去一行行输入命令的麻烦。

### 手动构建

**Windows**

```shell
# 安装 rust
scoop install rustup
# 安装 pnpm 包管理器
scoop install pnpm

# 下载项目依赖
pnpm install
# 编译项目
pnpm build:ci
```

生成的文件位于: `./app/src-tauri/target/release/bundle/` 下

**MacOS**

```shell
# 安装 rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# 安装 pnpm 包管理器
brew install pnpm

# 下载项目依赖
pnpm install
# 编译项目
pnpm build:ci
```

生成的文件位于: `./app/src-tauri/target/release/bundle/dmg/` 下

> 由于精力有限，其他平台的构建策略待完善

### 使用脚本构建

**Windows**

```pwsh
pwsh .\tools\build.ps1
```

**MacOS**

```pwsh
sh ./tools/build.sh
```

> 由于精力有限，其他平台构建脚本待完善

## 与原项目的差异

| 修改项   | 说明                                                                                      |
| :------- | :---------------------------------------------------------------------------------------- |
| 项目名称 | 修改为 "Open Graph"，避免安装时与原项目冲突                                               |
| 遥测功能 | **已禁用** - 不向服务器传输任何数据                                                       |
| AI 功能  | **已移除** - 思维导图软件的核心在于思考本身；如需 AI 辅助，建议使用专门的 AI 工具         |
| 关于界面 | **已精简** - 保持软件本身专注                                                             |
| 捐赠界面 | **已移除** - 保持界面简洁<br>但仍鼓励您访问[原项目](https://graphif.dev/donate)支持原作者 |

> **除上述差异外，所有核心功能与原项目保持一致。**

## 贡献

欢迎提交 Issue 和 Pull Request！

对于核心功能改进，我会考虑贡献回上游项目。

**免责声明**：本项目是独立维护的社区版本，与原项目作者无关。如遇问题，请在本仓库提交 Issue，不要打扰原项目维护者。

## 许可证

本项目继承原项目的许可证：[GPL-3.0](./LICENSE)

根据 GPL-3.0 协议条款，本分支版本同样采用 GPL-3.0 许可。

