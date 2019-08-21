FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

MAINTAINER tok41

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
	vim \
	emacs \
	git \
	wget
RUN apt-get clean

RUN git config --global user.email "tokita@glia-computing.com"
RUN git config --global user.name "tokita1"

WORKDIR /root
RUN git clone https://github.com/tok41/dot_emacs_d.git .emacs.d

RUN mkdir workspace

WORKDIR /root/workspace
RUN pip install --upgrade pip
RUN pip install keras==2.2.4
RUN pip install autopep8==1.4.4
RUN pip install jedi==0.13.3
RUN pip install jupyterlab==0.35.4
RUN pip install pandas==0.24.2
RUN pip install scikit-learn==0.20.3
RUN pip install seaborn==0.9.0


RUN echo "umask 0 0 0 2" >> ~/.bashrc

CMD jupyter lab --port 8888 --ip=0.0.0.0 --allow-root
