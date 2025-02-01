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

# 在 config.yaml 中显式声明环境变量

# 运行录播姬（绑定到本地回环地址）
exec /entrypoint.sh \
    --http-ip 127.0.0.1 \
    -d "/rec"