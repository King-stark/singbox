#! /bin/bash
#升级安装基础包管理工具
apt-get -y update
apt-get -y install nano curl wget bash-completion

#编译安装全功能sing-box服务
apt -y install curl git build-essential libssl-dev libevent-dev zlib1g-dev
