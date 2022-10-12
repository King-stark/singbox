#! /bin/bash
#升级并安装基础包管理工具
apt-get -y update
apt-get -y install nano curl wget bash-completion libevent-*
apt-get -y update && apt-get -y autoremove && apt-get -y autoclean

# 下载编译好的全功能sing-box文件
wget -c https://pan.kodbox.ga/singbox/singbox.tar.gz
tar -zxf singbox.tar.gz && chmod +x ./singbox && rm singbox.tar.gz

#下载配置文件
wget -c https://github.com/King-stark/singbox/raw/main/config/goorm-server.json -O config.json

#运行singbox服务
nohup ./singbox run -c config.json >/dev/null 2>&1 &

# ~#测试 增加个web进程防止容器掉线~
# #caddy运行 下载预编译库 https://github.com/lxhao61/integrated-examples.git
# wget -c https:// pan.kodbox.ga/singbox/caddy.tar.gz
# tar -zxf caddy.tar.gz && chmod +x ./caddy && rm caddy.tar.gz

# #下载mikutap网页代码
# wget -c https://github.com/King-stark/singbox/raw/main/config/mikutap.tar.gz
# tar -zxf mikutap.tar.gz

# #下载Caddyfile
# wget -c https://github.com/King-stark/singbox/raw/main/config/Caddyfile


#运行caddy服务
./caddy start
