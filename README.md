# Bitcoin Solo Mining

[Know more about it](https://ricardobaltazar.com/blog/how-to-solo-mine-bitcoin-with-a-regular-pc/)!

## Build

### MAC 

`DOCKER_DEFAULT_PLATFORM=linux/amd64 docker compose build`

### Others

`docker compose build`

## Run

Get a copy of the Bitcoin blockchain at a specific point in time.Used for restoring the blockchain to a particular state or for syncing new nodes faster:

- https://bitcoin-snapshots.jaonoct.us/

Extract the folders `chainstate` and `blocks` to the `btc` folder. Your folder tree should be like this:

```
.
├── btc
│   ├── banlist.json
│   ├── bitcoin.conf
│   ├── bitcoind.pid
│   ├── blocks
│   │   ├── blk00000.dat
│   │   ├── ...
│   │   ├── blk03818.dat
│   │   ├── index
│   │   │   ├── 002144.ldb
│   │   │   ├── ...
│   │   │   ├── CURRENT
│   │   │   ├── LOCK
│   │   │   └── MANIFEST-003043
│   │   ├── rev00000.dat
│   │   ├── ...
│   │   └── rev03818.dat
│   ├── chainstate
│   │   ├── 2450473.ldb
│   │   ├── ...
│   │   ├── CURRENT
│   │   ├── LOCK
│   │   └── MANIFEST-3503905
│   ├── debug.log
│   ├── fee_estimates.dat
│   ├── mempool.dat
│   ├── peers.dat
│   ├── peers.dcad
│   └── settings.json
├── docker-compose.yml
├── docker-entrypoint.sh
├── Dockerfile.btc
├── Dockerfile.cpuminer-opt
├── Dockerfile.miner
├── README.md
├── start-cpuminer-opt.sh
└── start.sh
```

If you don't have the `btc` folder, you should run at least once the service `bitcoin-core`. Don't forget to configure your own `bitcoin.conf`. Now that everything seems fine, you can issue:

    UID=$UID GID=$GID docker compose up bitcoin-core

### Sample bitcoin.conf

```
# https://en.bitcoin.it/wiki/Running_Bitcoin#Bitcoin.conf_Configuration_File
# https://github.com/bitcoin/bitcoin/commit/b483084d866c16d97a34251ae652bac94f85f61d
prune=550
server=1

rpcuser=mini
rpcpassword=rig
rpcallowip=0.0.0.0/0
rpcbind=127.0.0.1
rpcbind=bitcoin-core

proxy=127.0.0.1:9050
maxmempool=1000
```
