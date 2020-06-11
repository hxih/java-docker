FROM centos:7
MAINTAINER hxih
ADD https://github.com/hxih/binary-file/raw/master/jdk-8u202-linux-x64.tar.gz /usr/java/
ENV LANG=en_US.UTF-8
ENV JAVA_HOME /usr/java/jdk1.8.0_202
ENV PATH ${PATH}:${JAVA_HOME}/bin
RUN echo "export LANG=$LANG" > /etc/profile.d/locale.sh \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
WORKDIR /opt
