FROM hxih/baseimage
MAINTAINER hxih
ADD https://github.com/hxih/binary-file/raw/master/jdk-8u202-linux-x64.tar.gz /usr/java/
ADD https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz /usr/maven/
ENV LANG=en_US.UTF-8
ENV JAVA_HOME /usr/java/jdk1.8.0_202
ENV MAVEN_HOME /usr/maven/apache-maven-3.6.3
ENV PATH ${PATH}:${JAVA_HOME}/bin:${MAVEN_HOME}/bin
