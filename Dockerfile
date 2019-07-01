FROM  alpine:3.10

MAINTAINER JamesMo <15510325588@163.com>

ENV LANG       zh_CN.UTF-8
ENV LANGUAGE   zh_CN:zh

#RUN apk add --no-cache --update-cache bash
#RUN apk add --no-cache   bash  curl  wget

#ENV TZ=Asia/Shanghai
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "Asia/Shanghai" > /etc/timezone
ADD localtime /etc/localtime

CMD ["/bin/bash"]
