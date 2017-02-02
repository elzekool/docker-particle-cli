FROM ubuntu:16.04
MAINTAINER Elze Kool

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y\
    curl software-properties-common

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -

RUN apt-get update
RUN apt-get install -y \
    cppcheck \
    dfu-util \
    gcc g++ \
    gcc-arm-embedded \
    gdb \
    git \
    nodejs \
    udev

ENV PARTICLE_CLI_UPDATE 2017_02_1

RUN npm -g install particle-cli \
    && rm -rf ~/.npm

WORKDIR /data
ENTRYPOINT [ "/usr/bin/particle" ]
