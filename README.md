云之基石
====================

##介绍
---------------------
1、小巧：基于Musl libc和busybox，和busybox一样小巧，最小的Docker镜像只有5MB；

2、安全：面向安全的轻量发行版；

3、简单：提供APK包管理工具，软件的搜索、安装、删除、升级都非常方便。

4、适合容器使用：由于小巧、功能完备，非常适合作为容器的基础镜像。

###版本维护
- 升级到3.10 2019-07-01

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
###todo
-时区

###命令
```
> docker build -t supermy/alpine base
> docker run -it --rm supermy/alpine date  -R
> docker build -t supermy/alpine:build base/build
> docker run --rm -ti  supermy/alpine:build
```