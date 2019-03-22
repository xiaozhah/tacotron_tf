Bootstrap: docker
From: tensorflow/tensorflow:1.8.0-gpu-py3
 
%labels
  Author Zhou Xiao
  Version v1.0.2
  build_date 2019 May 11

%post
  apt-get upgrade -y
  apt-get update  
  apt-cache madison python3-pip
  apt-get install -y python3-pip=8.1.1-2ubuntu0.4 tmux htop ranger tree ncdu wget zip unzip nano 
  apt-get autoclean
  pip install pip --upgrade
  wget https://raw.githubusercontent.com/zyj008/tensorflow/master/requirements.txt
  pip3 install -r requirements.txt
