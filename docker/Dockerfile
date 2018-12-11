FROM ioft/i386-ubuntu:16.04

MAINTAINER BSK

RUN apt-get update && apt-get install -y nginx

COPY html /usr/share/nginx/html
EXPOSE 443
