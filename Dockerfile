# Docker with python2.7


FROM ubuntu:latest

############################
# Minimum setup for ansible
############################
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python2.7 \
    python-dev \
    build-essential \
    wget \
    emacs23-nox

ADD . /home

CMD ['/bin/bash']