# FROM ubuntu:14.04
FROM debian

# silence Dialog TERM not set errors in apt-get install
ENV DEBIAN_FRONTEND noninteractive

# factory requirements plus a couple of useful things
RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    binutils-dev \
    bison \
    build-essential \
    bzip2 \
    ecj \
    fastjar \
    flex \
    gawk \
    gconf2 \
    gettext \
    gperf \
    groff \
    gtk-doc-tools \
    guile-1.8 \
    icon-naming-utils \
    indent \
    install-info \
    lib32ncurses5 \
    lib32z1 \
    lib32z1-dev \
    libc6-dev \
    libc6-dev-i386 \
    libcurl4-gnutls-dev \
    libdbus-glib-1-dev \
    libexpat1-dev \
    libglade2-dev \
    libgmp3-dev \
    libgtk2.0-bin \
    libgtk2.0-dev \
    libmpfr-dev \
    libncurses5-dev \
    libperl-dev \
    libsdl1.2-dev \
    libssl-dev \
    libtool \
    libusb-dev \
    libxml-parser-perl \
    libz-dev \
    lzop \
    python-dev \
    python-libxml2 \
    ruby \
    scons \
    sharutils \
    sudo \
    swig \
    texinfo \
    texlive-extra-utils \
    texlive-latex3 \
    unzip \
    vim \
    wget \
    x11-xkb-utils \
    xfonts-utils \
    zip \
    zlib1g \
    bc \
    nodejs-legacy \
    libsqlite3-dev \
    software-properties-common \
    curl

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

# Use bash, not dash
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN dpkg-reconfigure dash

# Create jenkins-slave home directory, so as to use it for
# copying ssh or any other credentials required during build
RUN mkdir -p /home/jenkins-slave && chmod a+rwx /home/jenkins-slave

# Add a repo
RUN add-apt-repository ppa:git-core/ppa -y

# The curl script basically calls apt-get update
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

# install git-lfs
RUN apt-get install -y git-lfs && git lfs install && git lfs env


# Expect to volume mount a factory in /workdir and start there
# (Should be readable/writable by mounted user)
VOLUME /workdir
WORKDIR /workdir
