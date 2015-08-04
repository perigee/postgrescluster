# Minimum setting for python2.7 and ansible


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


WORKDIR /home
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2.7 get-pip.py

RUN pip install -U ansible


ADD . /home
#WORKDIR /home
#RUN ansible-playbook -i hosts -c local playbook.yml

CMD ['/bin/bash']