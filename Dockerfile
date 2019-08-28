FROM alpine:3.10.2

COPY dockerfiles /

RUN rm -rf /var/cache/apk/* && apk update && \
    apk add --update rsyslog rsyslog-tls && \
    rm -rf /var/cache/apk/* && \
    chmod +x /app/run.sh

EXPOSE 514
EXPOSE 514/udp

#USER 1000

CMD ["/app/run.sh"]
