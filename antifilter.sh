#!/bin/bash

DIR="/var/www"

# Download antifilter list
curl -s https://antifilter.download/list/allyouneed.lst --output ${DIR}/antifilter.list

### Modify for Shadowrocket & Clash ###
# Shadowrocket
sed -i 's/^/IP-CIDR,/' ${DIR}/antifilter.list
# Clash
sed -e 's/^/  - /' ${DIR}/antifilter.list > ${DIR}/antifilter.yaml
sed -i '1 i\payload:' ${DIR}/antifilter.yaml

# chown
chown abc:abc ${DIR}/antifilter.{yaml,list}