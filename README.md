# V4 Flash 神模式 (opencode-go)

## 重要公告

原作者已更新，本项目不再演进，请使用原作者的项目。

原作者：https://github.com/yjh051108/dsh-routing-suite

原作者预设按模型（而非 provider）路由，不含 opencode-go 特有依赖，理论上可用于 opencode-go + DeepSeek V4 Flash。实际效果请以原作者仓库的安装说明为准，如有问题可在其仓库反馈。

## 项目背景

本项目是原作者早期版本在 opencode-go 上的临时适配，用于验证 Flash 模型在引导条件下的效果提升，现已完成其历史使命。

原作者的方案此后已重新设计，包含两种路由模式：

- **standard（标准）**：执行型，边行动边修正，适合快速交付的任务
- **spec（Specification-first）**：规划型，先分析后实施，适合复杂任务

本项目未包含上述更新，仅保留原作者早期版的核心思路，不再跟进。

## 致谢

基于 [dsh-routing-suite](https://github.com/yjh051108/dsh-routing-suite)（MIT）。