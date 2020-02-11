FROM curlimages/curl AS builder
USER root

ARG MTAIL_VER=v3.0.0-rc34
RUN curl -L -o /mtail https://github.com/google/mtail/releases/download/${MTAIL_VER}/mtail_${MTAIL_VER}_linux_amd64 && \
    chmod 0755 /mtail

FROM debian:stable-slim

RUN mkdir /etc/mtail
COPY --from=builder /mtail /usr/bin/mtail

EXPOSE 3903
ENTRYPOINT ["/usr/bin/mtail"]
