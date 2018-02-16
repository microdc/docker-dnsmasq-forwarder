FROM alpine

RUN apk add --no-cache dnsmasq bind-tools
COPY forwarder.conf /etc/dnsmasq.d/

ENTRYPOINT ["/usr/sbin/dnsmasq"]
