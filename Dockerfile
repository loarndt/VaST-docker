FROM ubuntu:latest

MAINTAINER Lothar Arndt <lothar.arndt@equality-it.com.au>

RUN apt-get update && \
    apt-get install -y build-essential gfortran g++ libx11-dev libxi-dev libxmu-dev libpng-dev curl wget && \
    apt-get install -y libfftw3-dev libatlas-base-dev && \
    apt-get install -y vim jq bc git iputils-ping gnuastro && \
    git clone https://github.com/kirxkirx/vast.git /opt/vast && \
    cd /opt/vast && make && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ 

ENV PATH=$PATH:/opt/vast
