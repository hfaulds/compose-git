FROM alpine:3.6

ARG COMPOSE_VERSION=1.17.1
ARG DOCKER_VERSION=17.10.0-r0

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
 && apk add --update --no-cache python py-pip bash git openssh curl "docker=$DOCKER_VERSION" \
 && pip install --no-cache-dir docker-compose==$COMPOSE_VERSION \
 && rm -rf /var/cache/apk/*

WORKDIR /data
VOLUME /data
