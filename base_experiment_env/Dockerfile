FROM python:3

# mkdir & cd
WORKDIR /work

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
	emacs \
	git \
	wget
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

RUN pip install --upgrade pip
RUN pip install numpy \
	scipy \
	matplotlib \
	ipython \
	scikit-learn \
	pandas \
	seaborn
RUN pip install jupyterlab

RUN jupyter serverextension enable --py jupyterlab


