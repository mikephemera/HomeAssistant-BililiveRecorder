# Home Assistant - BililiveRecorder

[![Version](https://img.shields.io/github/tag/Bililive/BililiveRecorder.svg?label=Version)](#) [![License](https://img.shields.io/github/license/Bililive/BililiveRecorder.svg)](#) [![Crowdin](https://badges.crowdin.net/bililiverecorder/localized.svg)](https://crowdin.com/project/bililiverecorder)

Home Assistant 加载项：让mikufans录播姬跑在 Home Assistant 里！

## 关于

本项目是一个 Home Assistant 加载项，允许你在 Home Assistant 中运行 [BililiveRecorder](https://rec.danmuji.org/)（录播姬）。录播姬是一个用于录制 Bilibili 直播的开源工具，支持自动录制、多直播间录制、自动修复直播流问题等功能。

通过这个加载项，你可以轻松地将录播姬集成到你的 Home Assistant 环境中，实现自动化直播录制与管理，并通过 Home Assistant 的界面进行统一管理和监控。

## 🚀 功能特性

- **全自动录制**：支持多直播间监控，主播开播秒级触发录制
- **无缝集成**：通过 Home Assistant Ingress 安全访问 Web UI，无需暴露端口
- **持久化存储**：录播文件保存在 `/share` 目录，支持外部存储映射
- **健康监控**：实时日志查看、运行状态通知与自动化联动
- **一键更新**：支持 Supervisor 自动检测版本更新

## 📥 安装指南

1. **添加仓库**  
   进入 Home Assistant **Supervisor** → **Add-on Store** → 点击右上角 **⋮** → **Repositories**，添加仓库 URL：  
https://github.com/mikephemera/HomeAssistant-BililiveRecorder

1. **安装加载项**  
在 Add-on Store 中找到 **BililiveRecorder**，点击 **Install**。

1. **启动与使用**  
安装完成后点击 **Start**，通过 **Open Web UI** 进入录播姬管理界面。

## ❓ [常见问题](https://rec.danmuji.org/user/faq/)
如果你可以成功打开 Web UI，说明加载项运行正常。若遇到使用问题，你应该查阅[录播姬官方FAQ](https://rec.danmuji.org/user/faq/)获取解决方案。

## 📜 更新日志
参见 CHANGELOG.md

## 参考资料 & 鸣谢
- [录播姬](https://rec.danmuji.org/) 本项目完全建立在录播姬的Docker容器镜像上
- [BililiveRecorder](https://github.com/BililiveRecorder/BililiveRecorder) 感谢大神！