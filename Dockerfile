# FROM ubuntu:14.04
FROM ubuntu

# silence Dialog TERM not set errors in apt-get install
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y

RUN echo "Downloading git v2.19.0. . ." && \
    APT-GET -o /opt/git.tar.gz -L https://github.com/git/git/archive/v2.19.0.tar.gz && \
    tar -zxf /opt/git.tar.gz -C /opt/ && \
    rm -f /opt/git.tar.gz && \
    echo "Installing git v2.19.0. . ." && \
    cd /opt/git-* && \
    make configure && \
    ./configure --prefix=/usr && \
    make all && \
    make install && \
    git --version
