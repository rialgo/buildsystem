# Dockerfile based on https://github.com/crops/yocto-dockerfiles/blob/master/dockerfiles/ubuntu/ubuntu-16.04/ubuntu-16.04-base/Dockerfile

FROM ubuntu:16.04

ARG BUILD_USER=build

RUN apt-get update && \
    apt-get install -y \
        gawk \
        wget \
        git-core \
        diffstat \
        unzip \
        sysstat \
        texinfo \
        gcc-multilib \
        build-essential \
        chrpath \
        socat \
        python \
        python3 \
        xz-utils  \
        locales \
        cpio \
        screen \
        tmux \
        sudo \
        iputils-ping \
        curl \
        nano \
        fluxbox \
        tree \
        tightvncserver && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    cp -af /etc/skel/ /etc/vncskel/ && \
    echo "export DISPLAY=1" >>/etc/vncskel/.bashrc && \
    mkdir  /etc/vncskel/.vnc && \
    echo "" | vncpasswd -f > /etc/vncskel/.vnc/passwd && \
    chmod 0600 /etc/vncskel/.vnc/passwd && \
    curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo && \
    chmod a+x /usr/bin/repo && \
    useradd -U -m $BUILD_USER && \
    /usr/sbin/locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /home/$BUILD_USER
#USER $BUILD_USER

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
