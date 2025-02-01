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
export BREC_HTTP_OPEN_ACCESS = "true"
bashio::log.info "BREC_HTTP_OPEN_ACCESS is set to: ${BREC_HTTP_OPEN_ACCESS}"

# 检查所有环境变量
bashio::log.info "=== 环境变量列表 ==="
printenv | grep BREC_

# 运行录播姬（绑定到本地回环地址）
exec /entrypoint.sh \
    --http-open-access "${BREC_HTTP_OPEN_ACCESS}" \
    --http-ip 127.0.0.1 \
    -d "/rec"