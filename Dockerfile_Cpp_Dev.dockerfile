FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y \
    software-properties-common \
    wget \
    && add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && apt-get install -y \
    make \
    git \
    libcurl4-openssl-dev \
    vim \
    unzip \
    zip \
    && apt-get install -y cmake \
    && apt-get install -y \
    build-essential \
    libboost-all-dev

CMD ["/bin/bash"]