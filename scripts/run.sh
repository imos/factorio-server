#!/usr/bin/env bash

set -eux

{
    /usr/local/bin/gost -L=kcp://:8388?c=/etc/gost/kcp.conf
} &

cd /usr/local/factorio
./bin/x64/factorio --start-server "$@"
