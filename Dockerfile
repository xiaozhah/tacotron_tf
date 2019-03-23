FROM tensorflow/tensorflow:1.13.0-gpu-py3
MAINTAINER Zhou Xiao

RUN  apt-get update && \
     apt-get upgrade -y && \
     apt-get install -y tmux htop ranger tree ncdu wget zip unzip nano && \
     apt-get clean && \
     rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
     wget https://raw.githubusercontent.com/xiaozhah/tacotron_tf/master/requirements.txt && \
     pip install -r requirements.txt
  
