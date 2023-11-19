FROM ubuntu

MAINTAINER c <orange_16@foxmail.com>

# 设置时区为台北
RUN ln -snf /usr/share/zoneinfo/Asia/Taipei /etc/localtime && echo Asia/Taipei > /etc/timezone

# 安装java等软件
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends screen procps openssh-server vim openjdk-19-jdk ntp locales-all language-pack-zh-hans && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*

#创建rsa公钥
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
RUN echo "粘贴公钥到此处" > /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# 修改ssh配置文件
RUN echo '\n\
Port 11451\n\
PubkeyAuthentication yes\n\
PasswordAuthentication no\n\
PermitRootLogin yes' >> /etc/ssh/sshd_config

# 设置系统语言为中文
RUN echo "export LC_ALL=zh_CN.UTF-8" >> /etc/profile
ENV LANG C.UTF-8

# 开机自动运行
CMD ["/bin/bash", "start.sh"]
