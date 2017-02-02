#!/bin/bash
DIR=$(dirname $0)
docker build -t elzekool/particle-cli $DIR/build/
