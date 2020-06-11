FROM hxih/baseimage
MAINTAINER hxih
RUN apk add --no-cache --virtual=.build-dependencies wget ca-certificates && \
    mkdir -p /usr/{java,maven} && \
    wget -q -O /usr/java/jdk8.tar.gz https://github.com/hxih/binary-file/raw/master/jdk-8u202-linux-x64.tar.gz && \
    wget -q -O /usr/maven/maven.tar.gz https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && \
    cd /usr/java/ && \
    tar xf jdk8.tar.gz && \
    cd /usr/maven/ && \
    tar xf maven.tar.gz && \
    rm -f /usr/java/jdk8.tar.gz /usr/maven/maven.tar.gz && \
    apk apk del .build-dependencies
ENV LANG=en_US.UTF-8
ENV JAVA_HOME /usr/java/jdk1.8.0_202
ENV MAVEN_HOME /usr/maven/apache-maven-3.6.3
ENV PATH ${PATH}:${JAVA_HOME}/bin:${MAVEN_HOME}/bin
