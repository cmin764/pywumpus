#! /usr/bin/env bash

docker build --tag wumpus .
docker run -it wumpus
