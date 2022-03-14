# Ethereum setup
## .env
|environment|description|example
|---|---|---|
|NODE_PORT|blockchain node port|30303|
|RPC_PORT|external http port|8545|
|WEBSOCKET_PORT|external websocket port|8546|

## ready
### make chain data directory and copy genesis.json
```shell
> mkdir -p -m 777 ./chaindata/geth
> cp -r genesis.json ./chaindata
```

## start
### Initialize genesis.json
```shell
> docker-compose -f init.docker-compose.yaml up -d

...
INFO [03-14|02:00:59.943] Allocated cache and file handles
INFO [03-14|02:01:00.259] Persisted trie from memory database      
INFO [03-14|02:01:00.260] Successfully wrote genesis state     
...    
```
### Start ethereum node
```shell
> docker-compose -f start.docker-compose.yaml up -d
```