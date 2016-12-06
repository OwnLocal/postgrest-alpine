from alpine:latest

RUN apk update && \
    apk add libpq gmp && \
    rm -f /var/cache/apk/*

ADD bin/postgrest /usr/bin/postgrest
ENTRYPOINT ["/usr/bin/postgrest"]
