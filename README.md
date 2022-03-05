# Ethereum setup
> Using docker compose
## .env

|environment|description|example|
|---|---|---|
|ACCOUNT_PASSWORD|node account password|5uper53cr3t|
|NETWORK_ID|ethereum network id|1213|
|RPC_PORT|http rpc port|8545|
|NODE_KEY|main node private key|b0ac22adcad37213c7c565810a50f1772291e7b0ce53fb73e7ec2a3c75bc13b5|
|NODE_ID|bootnodes id|af22c29c316ad069cf48a09a4ad5cf04a251b411e45098888d114c6dd7f489a13786620d5953738762afa13711d4ffb3b19aa5de772d8af72f851f7e9c5b164a|
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
- [ethereum client docker hub]

[ethereum client docker hub]: https://hub.docker.com/r/ethereum/client-go/