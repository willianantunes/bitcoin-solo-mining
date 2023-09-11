#!/usr/bin/env bash

set -e

/app/cpuminer --algo sha256d \
--userpass mini:rig \
--url http://bitcoin-core:8332 \
--coinbase-addr=YOUR_ADDRESS \
--threads 4 \
-- debug
