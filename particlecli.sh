#!/bin/bash

realpath() {
  [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

ROOT_PATH=$(realpath $(dirname $0))
docker run --rm -it --privileged -v ${ROOT_PATH}/home:/root -v ${PWD}:/data -v /dev/bus/usb:/dev/bus/usb elzekool/particle-cli "$@"
