FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget curl

COPY ./update-golang /home/update-golang
WORKDIR /home/update-golang/
RUN ./update-golang.sh

COPY ./go-ethereum /home/go-ethereum
WORKDIR /home/go-ethereum/

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get install -y build-essential libgmp3-dev git

# RUN wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | tar -xz -C /usr/local
# RUN export PATH=$PATH:/usr/local/go/bin
# RUN source ~/.profile

RUN git checkout refs/tags/v1.5.5
RUN make geth
RUN cp build/bin/geth /usr/local/bin/

WORKDIR /home/DATA_STORE/
COPY ./genesis.json /home/DATA_STORE
RUN geth --datadir "/home/DATA_STORE" init /home/DATA_STORE/genesis.json
