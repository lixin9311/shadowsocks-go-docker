
# shadowsocks-go
#
# VERSION 0.0.1

FROM busybox

MAINTAINER Kaijun Chen <Kaijun.cn@gmail.com>

ADD https://github.com/shadowsocks/shadowsocks-go/releases/download/1.2.1/shadowsocks-server.tar.gz /ss.gz

RUN gunzip -c ss.gz > /ss
RUN chmod 777 /ss

# Configure container to run as an executable
ENTRYPOINT ["/ss"]
