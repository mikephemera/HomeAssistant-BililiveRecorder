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
export BREC_HTTP_BASIC_USER=${USERNAME}
export BREC_HTTP_BASIC_PASS=${PASSWORD}
[ ! -z "${UMASK}" ] && export UMASK=${UMASK}
[ ! -z "${PUID}" ] && export PUID=${PUID}
[ ! -z "${PGID}" ] && export PGID=${PGID}

# 运行录播姬（适配 Ingress）
exec /entrypoint.sh \
    --http-basic "${USERNAME}:${PASSWORD}" \
    -d "/rec" \
    --web-ui-url http://0.0.0.0:2356/