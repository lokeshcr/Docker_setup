# FROM ubuntu:14.04
FROM ubuntu:xenial

# silence Dialog TERM not set errors in apt-get install
ENV DEBIAN_FRONTEND noninteractive

# Install Git v2.19.0 from the source
# This version was chosen because its the latest stable version as of
# September 25, 2018. And we want to make sure that Git operations such as
# patch creation are done from the same revision always
RUN echo "Downloading git v2.19.0. . ." && \
    curl -o /opt/git.tar.gz -L https://github.com/git/git/archive/v2.19.0.tar.gz && \
    tar -zxf /opt/git.tar.gz -C /opt/ && \
    rm -f /opt/git.tar.gz && \
    echo "Installing git v2.19.0. . ." && \
    cd /opt/git-* && \
    make configure && \
    ./configure --prefix=/usr && \
    make all && \
    make install && \
    git --version
