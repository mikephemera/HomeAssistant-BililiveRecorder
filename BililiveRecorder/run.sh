#!/usr/bin/env bashio

# 获取用户配置参数
STORAGE_PATH=$(bashio::config 'storage_path')
USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')
UMASK=$(bashio::config 'umask')
PUID=$(bashio::config 'puid')
PGID=$(bashio::config 'pgid')

# 创建持久化目录
mkdir -p ${STORAGE_PATH}

# 设置环境变量
export BREC_HTTP_OPEN_ACCESS="2"  # 禁用非局域网访问警告
# 移除HTTP Basic认证（由Ingress处理认证）
unset BREC_HTTP_BASIC_USER
unset BREC_HTTP_BASIC_PASS
[ ! -z "${UMASK}" ] && export UMASK=${UMASK}
[ ! -z "${PUID}" ] && export PUID=${PUID}
[ ! -z "${PGID}" ] && export PGID=${PGID}

# 运行录播姬（适配Ingress，无需指定端口和认证）
exec /entrypoint.sh \
    --http-open-access 2 \
    -d "/rec"