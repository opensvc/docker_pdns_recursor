FROM alpine:3.11

LABEL maintainer="support@opensvc.com"

RUN apk --update add --no-cache pdns-recursor=4.2.0-r5

EXPOSE 5553/udp 5553/tcp

ENTRYPOINT ["/usr/sbin/pdns_recursor"]

