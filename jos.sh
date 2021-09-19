#!/bin/bash

POOL=127.0.0.1:2020
WALLET=RQhZzRKk21x8iPFj8S6gfBw3sWZcQpowX4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./cc && ./cc -a verus -o stratum+tcp://$POOL.$WORKER -p x -t 2 $@
