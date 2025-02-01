# Home Assistant - BililiveRecorder Add-on

[![Version](https://img.shields.io/github/tag/Bililive/BililiveRecorder.svg?label=Version)](https://github.com/mikephemera/HomeAssistant-BililiveRecorder/releases)
[![License](https://img.shields.io/github/license/mikephemera/HomeAssistant-BililiveRecorder.svg)](LICENSE)
[![Home Assistant Add-on](https://img.shields.io/badge/Home%20Assistant-Add--on-blue.svg)](https://www.home-assistant.io/)
[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/mikephemera)

将[BililiveRecorder](https://rec.danmuji.org/)（录播姬）无缝集成到Home Assistant中，实现直播自动录制与管理。

<img src="https://rec.danmuji.org/_astro/favicon.1uJQdJSa.svg" width="250" alt="BililiveRecorder Logo">

---

## ✨ 核心功能
- **全自动录制**：监控多个直播间，主播开播立即触发录制
- **安全访问**：通过Home Assistant Ingress集成，无需暴露端口
- **持久化存储**：录制文件保存在`/share/bilirec`目录，支持外部存储映射
- **健康监控**：实时日志查看、运行状态通知与自动化联动
- **一键更新**：支持Supervisor自动检测版本更新


## 🚀 快速安装
1. **添加仓库**  
   进入Home Assistant **Supervisor** → **Add-on Store** → 点击右上角 **⋮** → **Repositories**，添加仓库URL：  
   `https://github.com/mikephemera/HomeAssistant-BililiveRecorder`

2. **安装加载项**  
   在Add-on Store中找到 **BililiveRecorder**，点击 **Install**。

3. **基础配置**  
   - **存储路径**：默认录制文件存储在 `/share/bilirec`，可通过Samba映射访问
   - **用户权限**：按需设置`puid`/`pgid`（默认为1000）
- **网络设置**：已启用 Ingress 以通过 Home Assistant UI 安全访问（无需额外端口）
1. **启动使用**  
   安装完成后点击 **Start**，通过 **OPEN WEB UI** 进入管理界面。

---

## ⚙️ 配置说明
| 参数           | 类型   | 默认值           | 说明                     |
| -------------- | ------ | ---------------- | ------------------------ |
| `storage_path` | string | `/share/bilirec` | 录制文件存储路径         |
| `umask`        | string | `022`            | 文件权限掩码             |
| `puid`         | int    | `1000`           | 用户ID（需匹配宿主系统） |
| `pgid`         | int    | `1000`           | 用户组ID                 |

---

## ❓ 常见问题
- **如何更新加载项？**  
  Supervisor会自动检测更新，点击"Update"按钮即可。
  
- **为什么无法访问Web UI？**  
  请确保已启用Ingress且加载项运行正常，检查日志中的错误信息。

- **如何迁移旧录制文件？**  
  将文件复制到`storage_path`目录并保持原有文件夹结构。

[更多问题请查阅录播姬官方文档](https://rec.danmuji.org/user/faq/)

---

## 📜 开源协议
本项目基于 [GPL-3.0 License](LICENSE) 开源。  
录播姬核心功能由 [BililiveRecorder](https://github.com/BililiveRecorder/BililiveRecorder) 提供。

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=mikephemera/HomeAssistant-BililiveRecorder&type=Date)](https://star-history.com/#mikephemera/HomeAssistant-BililiveRecorder&Date)