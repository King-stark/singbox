### goorm 部署
*goorm提供为docker容器行的vps,如需作为正常vps使用（eg:自编译xxx），尝试执行</br>
`apt update;apt -y install language-pack-en;apt upgrade -y`</br>
可能：时间较长，忽略错误*
> 🈲️止 服务器内测速、superbench、作下载盘、 常见的代理文件等，秒封～
 
* 一键运行 音盒`sing-box`
```shell
bash <(curl -sL https://github.com/King-stark/singbox/raw/main/config/goorm-onekey.sh)
```

* Client 根据`server config`自适应

### northflank 等类 docker容器部署
> 需要绑定一张外币卡（visa、mastercard...）

* 🌰栗子：
```
docker.io/v2fly/v2fly-core:latest

指定 CMD 
/usr/bin/v2ray -config https://jsonblob.com/api/954560508024078336
```
* Client 根据`server config`自适应
