# Ethereum setup
## .env
|environment|description|example
|---|---|---|
|NODE_PORT|blockchain node port|30303|
|RPC_PORT|external http port|8545|
|PEER_PORT|connect peer port|8546|

## start
### Initialize genesis.json
```shell
> docker-compose -f init.docker-compose.yaml up -d
```
### Start ethereum node
```shell
> docker-compose -f start.docker-compose.yaml up -d
```