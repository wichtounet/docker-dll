FROM ubuntu:16.04

MAINTAINER Baptiste Wicht

# Install git for getting dll
RUN apt-get update && apt-get install -y git make build-essential && rm -rf /var/lib/apt/lists/*

# Create the necessary folders
RUN mkdir -p /dll/build/

# Clone dll
RUN cd /dll/build && git clone --recursive https://github.com/wichtounet/dll

# Build dll

RUN export CXX=g++ && export LD=g++ && cd /dll/build/dll && make && make install

# Prepare the volumes for the user
VOLUME ["/dll/data"]

ENV CXX g++
ENV LD g++

WORKDIR /dll/data
CMD dllp dll.conf train
