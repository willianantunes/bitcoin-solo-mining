#!/usr/bin/env bash

set -e

/cpuminer/minerd --algo sha256d \
--userpass mini:rig \
--url http://bitcoin-core:8332 \
--coinbase-addr=YOUR_ADDRESS \
--threads 2 \
--debug
