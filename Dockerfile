FROM debian
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y ddclient \
 && rm -rf /var/lib/apt/lists/*
COPY docker-entrypoint.sh /usr/local/bin/
USER daemon
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["ddclient"]
