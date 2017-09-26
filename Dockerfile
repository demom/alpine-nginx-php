FROM alpine:latest

RUN apk update && apk add bash nano nginx php7 php7-redis php7-fpm php7-pdo_pgsql php7-imap php7-pgsql php7-simplexml php7-json php7-opcache php7-gd php7-curl php7-iconv 

VOLUME /etc/nginx/

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
