# tacotron_tf

项目是在HPC上用singulairy运行tensorflow1.2.0版本的tacotron2并配置了相关python包，见[requirements.txt](https://github.com/xiaozhah/tacotron_tf/blob/master/requirements.txt)

镜像配置来源于nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04，并自动构建在[Docker hub](https://cloud.docker.com/repository/docker/xzhou2333/tacotron_tf)

宿主机`smidia-smi`显示

>NVIDIA-SMI 410.104      Driver Version: 410.104      CUDA Version: 10.0     

值得注意的是图中宿主机是CUDA10与镜像是CUDA9不矛盾，还有就是这里cudnn7作为环境不可缺少（因为服务器一般不会开放cuda相关目录下文件的读写权限）

## 使用方法

`singularity pull docker://xzhou2333/tacotron_tf`
`singularity exec --nv -H 家目录 --pwd /mnt/tacotron2 --bind 宿主机目录:/mnt tacotron_tf_latest.sif python3 train.py`

* --nv 设置singularity的GPU模式
* --bind 绑定目录的挂载 相当于Docker的-v

尝试镜像使用 `singularity shell --containall tacotron_tf_latest.sif`，`--containall`表示隔离/tmp、$HOME、$PWD目录（防止破坏宿主机）
