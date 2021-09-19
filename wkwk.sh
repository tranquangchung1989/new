#!/bin/bash

POOL=127.0.0.1:2020
WALLET=9g15mkDUvyemPJH5nsS9N8rKAytxgibFt9QXijX8FyAZCWaJac5
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./wkkw && ./wkkw --coin BEAM --pool $POOL --user $WALLET.$WORKER --tls on $@
