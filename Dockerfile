FROM docker/compose:1.12.0

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
