FROM ubuntu:24.04

ENV DEBIAN_FRONTEND noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN apt-get update -q && apt-get install -qy wget unar && \
    apt-get clean -q && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local
RUN wget -O /tmp/gost.gz \
        https://github.com/ginuerzh/gost/releases/download/v2.11.5/gost-linux-amd64-2.11.5.gz && \
    unar /tmp/gost.gz && \
    mv gost /usr/local/bin/gost && \
    chmod +x /usr/local/bin/gost

ADD data/kcp.conf /etc/gost/kcp.conf

CMD ["/usr/local/bin/gost", \
     "-L=udp://:34197/127.0.0.1:34197", \
     "-F=kcp://f.j-p.jp:8388?c=/etc/gost/kcp.conf"]
