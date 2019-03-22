FROM ubuntu
MAINTAINER Zhou Xiao

RUN  apt-get update && \
     apt-get upgrade -y && \
     apt-get install -y tmux htop ranger tree ncdu wget zip unzip nan && \
     apt-get clean && \
     wget https://raw.githubusercontent.com/zyj008/tensorflow/master/requirements.txt && \
     pip install -r requirements.txt
  
ENV  LC_ALL=C
