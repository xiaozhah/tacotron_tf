FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
MAINTAINER Zhou Xiao

RUN  apt-get update && \
     apt-get upgrade -y && \
     apt-get install -y python3-dev python3-pip python3 tmux htop tree wget zip unzip nano && \
     apt-get clean && \
     rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
     wget https://raw.githubusercontent.com/xiaozhah/tacotron_tf/master/requirements.txt && \
     pip3 install numpy && \
     pip3 install -r requirements.txt && \
     pip3 install tensorflow-gpu==1.12.0 && \
     rm -rf ~/.cache/pip && \
     rm requirements.txt

ENV  LC_ALL=C
