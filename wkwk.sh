#!/bin/bash

POOL=127.0.0.1:2020
WALLET=38014dc6dc3521b4b80fad8bd89594db25402d3cf5518abbe647a004108e83aa590
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./wkwk && ./wkwk --coin BEAM --pool $POOL --user $WALLET.$WORKER --tls on $@