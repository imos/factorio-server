FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN apt-get update -q && apt-get install -qy wget unar && \
    apt-get clean -q && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local
RUN wget -O /tmp/gost.gz \
        https://github.com/ginuerzh/gost/releases/download/v2.11.1/gost-linux-amd64-2.11.1.gz && \
    unar /tmp/gost.gz && \
    mv gost /usr/local/bin/gost && \
    chmod +x /usr/local/bin/gost

RUN wget -O /tmp/factorio.tar.xz \
        https://factorio.com/get-download/latest/headless/linux64 && \
    unar /tmp/factorio.tar.xz

WORKDIR /usr/local/factorio
ADD mods /usr/local/factorio/mods
ADD data/server-settings.json /usr/local/factorio/data/
ADD data/server-adminlist.json /usr/local/factorio/server-adminlist.json
ADD saves /usr/local/factorio/saves

ADD scripts /usr/local/scripts

ADD data/kcp.conf /etc/gost/kcp.conf

ENTRYPOINT ["bash", "/usr/local/scripts/run.sh"]
CMD ["/usr/local/factorio/saves/primary.zip"]
