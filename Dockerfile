FROM alpine:edge

LABEL maintainer="support@opensvc.com"

RUN apk --update add --no-cache pdns-recursor=4.4.0-r0
RUN mkdir -p /var/run/pdns-recursor

EXPOSE 5553/udp 5553/tcp

ENTRYPOINT ["/usr/sbin/pdns_recursor"]

