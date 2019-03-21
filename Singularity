Bootstrap: docker
From: tensorflow/tensorflow:latest
 
%labels
  Author Zhou Xiao
  Version v1.0.2
  build_date 2019 May 11

%post
  apt-get update
  apt-get upgrade -y
  apt-get install -y tmux htop ranger tree ncdu wget zip unzip nano python3-pip
  apt-get autoclean
  wget https://raw.githubusercontent.com/zyj008/tensorflow/master/requirements.txt
  pip3 install -r requirements.txt
