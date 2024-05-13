FROM alpine:3.19

ARG TARGETOS
ARG TARGETARCH
ARG TARGETVARIANT

WORKDIR /app
COPY build/glance-$TARGETOS-$TARGETARCH${TARGETVARIANT} /app/glance

EXPOSE 8080/tcp
ENTRYPOINT ["/app/glance"]
