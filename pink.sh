#!/bin/bash

POOL=127.0.0.1:2020
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
