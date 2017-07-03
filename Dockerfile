FROM docker/compose:1.12.0

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh curl 'docker=17.05.0-r0'
