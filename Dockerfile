FROM golang:1.17.3-alpine as BUILDER
COPY ./go-ethereum /home/go-ethereum
WORKDIR /home/go-ethereum/

# RUN apt-get update
RUN apk add --no-cache build-essential libgmp3-dev make gcc musl-dev linux-headers git ca-certificates

RUN git checkout refs/tags/v1.5.5
RUN make geth
RUN cp build/bin/geth /usr/local/bin/

WORKDIR /home/DATA_STORE/
COPY ./genesis.json /home/DATA_STORE

RUN geth --datadir "/home/DATA_STORE" init /home/DATA_STORE/genesis.json
