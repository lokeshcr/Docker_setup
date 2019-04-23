FROM ubuntu:xenial

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
    echo "=================================================================================" && \
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
ADD my_script.py \
