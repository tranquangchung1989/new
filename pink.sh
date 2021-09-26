#!/bin/bash

POOL=ethash.poolbinance.com:1800
WALLET=bakocang
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x -stales 0 $@
