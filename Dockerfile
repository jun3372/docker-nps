FROM alpine

LABEL maintainer="Jun <zhoujun3372@gmail.com>"

# 设置中国源
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# 设置http为https
# RUN sed -i 's/http/https/g' /etc/apk/repositories

RUN apk add --no-cache bash bash-doc bash-completion

RUN mkdir /nps

COPY ["./nps", "/var/local/nps"]
COPY shell.sh /tmp/

WORKDIR /nps
VOLUME /nps


EXPOSE 80 443 6000 8024 8080

# 执行脚本
ENTRYPOINT [ "/tmp/shell.sh" ]
