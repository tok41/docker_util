FROM ubuntu:16.04

MAINTAINER tok41

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
	vim \
	emacs \
	git \
	wget \
	python3 \
	python3-dev \
	python3-pip

RUN git config --global user.email "hippy.hikky@gmail.com"
RUN git config --global user.name "tok41"

WORKDIR /root
RUN git clone https://github.com/tok41/dot_emacs_d.git .emacs.d
ADD emacs_elpa.tgz .emacs.d/

RUN mkdir workspace
COPY requirements.txt workspace/

WORKDIR /root/workspace
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt

