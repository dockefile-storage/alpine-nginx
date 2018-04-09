FROM alpine:latest
MAINTAINER ee900222 ee900222@gmail.com
 
# install nginx
RUN ver=`cat /etc/alpine-release` && mres="https://mirrors.aliyun.com/alpine/v${ver%.${ver#*.*.}}/main/" && cres="https://mirrors.aliyun.com/alpine/v${ver%.${ver#*.*.}}/community/" && cp /etc/apk/repositories /etc/apk/repositories.bak && echo -e $mres"\n"$cres> /etc/apk/repositories && apk update

RUN apk --update add nginx  && mkdir /run/nginx/ && touch /run/nginx/nginx.pid && mkdir -p /var/www/images

COPY default.conf /etc/nginx/conf.d/default.conf
 
EXPOSE 80
 
CMD ["nginx", "-g", "daemon off;"]
