# Ethereum setup
> Using docker compose
## .env

|environment|description|example|
|---|---|---|
|ACCOUNT_PASSWORD|node account password|5uper53cr3t|
|NETWORK_ID|ethereum network id|1213|
## build & start
```shell
> docker build -f docker/Dockerfile . --tag geth-client:1.0.0
> docker-compose up -d

or

> ./start.sh
```

## port
|name|port|type|
|---|---|---|
|http rpc port|8545|number|

## reference link
[dokcer compose reference]
[ethereum client docker hub]

[dokcer compose reference]: https://medium.com/scb-digital/running-a-private-ethereum-blockchain-using-docker-589c8e6a4fe8
[ethereum client docker hub]: https://hub.docker.com/r/ethereum/client-go/