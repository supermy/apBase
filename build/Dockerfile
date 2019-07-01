FROM  supermy/alpine

MAINTAINER JamesMo <15510325588@163.com>

ENV LANG       zh_CN.UTF-8
ENV LANGUAGE   zh_CN:zh

#增加编译环境
RUN apk add --no-cache --virtual .build-deps \
        build-base  \
        && apk add --no-cache libstdc++ \
        && rm -rf /var/cache/apk/*

RUN echo "Asia/Shanghai" > /etc/timezone
ADD localtime /etc/localtime

CMD ["/bin/bash"]
