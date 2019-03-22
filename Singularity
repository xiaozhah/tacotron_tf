Bootstrap: docker
From: tensorflow/tensorflow:1.8.0-gpu-py3
 
%labels
  Author Zhou Xiao
  Version v1.0.2
  build_date 2019 May 11

%post
  apt-get update
  apt-get upgrade -y
  apt-get install -y tmux htop ranger tree ncdu wget zip unzip nano 
  apt-get clean
  wget https://raw.githubusercontent.com/xiaozhah/tacotron_tf/master/requirements.txt
  pip install -r requirements.txt
