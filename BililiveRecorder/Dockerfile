ARG BUILD_FROM
FROM $BUILD_FROM

EXPOSE 2356
# 复制运行脚本
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]