FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/apline:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN apk add redis \
&& rm -rf /var/cache/apk/*


ADD redis.conf /etc/
EXPOSE 6379
CMD ["/usr/bin/redis-server","/etc/redis.conf"]
