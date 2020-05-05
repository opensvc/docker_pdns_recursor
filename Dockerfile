FROM alpine:latest

LABEL maintainer="support@opensvc.com"

RUN apk --update add --no-cache pdns-recursor

EXPOSE 5553/udp 5553/tcp

ENTRYPOINT ["/usr/sbin/pdns_recursor"]

