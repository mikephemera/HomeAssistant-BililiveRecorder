ARG BUILD_FROM
FROM $BUILD_FROM


# 复制运行脚本
COPY run.sh /
RUN chmod a+x /run.sh

# 暴露端口
EXPOSE 2356/tcp

# 启动脚本
CMD [ "/run.sh" ]