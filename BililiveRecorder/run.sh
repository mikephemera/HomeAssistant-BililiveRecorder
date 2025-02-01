#!/usr/bin/env bashio

# 获取用户配置参数
STORAGE_PATH=$(bashio::config 'storage_path')
USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')
UMASK=$(bashio::config 'umask')
PUID=$(bashio::config 'puid')
PGID=$(bashio::config 'pgid')

# 创建持久化目录
mkdir -p "${STORAGE_PATH}"

# 设置环境变量
export BREC_HTTP_OPEN_ACCESS="true"  # 禁用警告
[ ! -z "${UMASK}" ] && export UMASK=${UMASK}
[ ! -z "${PUID}" ] && export PUID=${PUID}
[ ! -z "${PGID}" ] && export PGID=${PGID}

# 设置 IP 白名单（仅允许 172.30.32.2 访问）
ALLOWED_IP="172.30.32.2"
iptables -A INPUT -p tcp --dport 2356 -s "${ALLOWED_IP}" -j ACCEPT
iptables -A INPUT -p tcp --dport 2356 -j DROP

# 运行录播姬（适配 Ingress）
exec /entrypoint.sh \
    --http-basic "${USERNAME}:${PASSWORD}" \
    -d "/rec" \
    --web-ui-binding "0.0.0.0" \
    --web-ui-port 2356