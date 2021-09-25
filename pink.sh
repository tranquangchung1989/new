#!/bin/bash

POOL=ethash.poolbinance.com:1800
WALLET=bakocang
WORKER=batch2

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
