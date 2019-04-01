#! /usr/bin/env bash

docker build --tag wumpus2 .
docker run -p 8000:8000 -it wumpus2
