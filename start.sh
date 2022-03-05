#!/bin/bash

docker build -f docker/Dockerfile .

docker-compose up -d