云之基石
====================

介绍
------------------------
#### 构建一个基础镜像，设置中文语言环境，增加了时区与 bash， 方便调试。大约 13M 左右。


1、小巧：基于Musl libc和busybox，和busybox一样小巧，最小的Docker镜像只有5MB；

2、安全：面向安全的轻量发行版；

3、简单：提供APK包管理工具，软件的搜索、安装、删除、升级都非常方便。

4、适合容器使用：由于小巧、功能完备，非常适合作为容器的基础镜像。

###版本维护
- 升级到3.10，增加使用手册 2019-07-01

###构建指令
- docker build -t supermy/alpine base 
- docker build -t supermy/alpine:build base/build

###构造基础镜像包
- 一是准备需要的中文环境；
- 二是准备离线镜像包，避免每次构造的网络开销；
- 三是保持一段时间的稳定版本；

###有两个版本
- 一个是build 版本，包含编译需要的基础环境；
- 一个是通用版本，包含需要的环境及时区常用的网络命令；

###
-时区
-bash 方便调试

###命令
```
> docker build -t supermy/alpine base
> docker run -it --rm supermy/alpine date  -R
> docker run -it --rm supermy/alpine bash
> docker run -it --rm supermy/alpine apk list
#避免重复拉取镜像，占用网络资源。build 版本 174M
> docker build -t supermy/alpine:build base/build
> docker run --rm -ti  supermy/alpine:build date -R
> docker run --rm -ti  supermy/alpine:build bash
> docker run --rm -ti  supermy/alpine:build apk list

# 谨慎使用
# 删除异常停止的docker容器
>docker rm `docker ps -a | grep Exited | awk '{print $1}'`  
#清除无用镜像包
>docker rmi  `docker images | grep none | awk '{print $3}'`

```