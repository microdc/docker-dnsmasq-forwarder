FROM alpine

RUN apk add --no-cache dnsmasq
COPY forwarder.conf /etc/dnsmasq.d/

ENTRYPOINT ["/usr/sbin/dnsmasq"]
