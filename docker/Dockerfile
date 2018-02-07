FROM crops/poky:ubuntu-16.04

USER root

RUN apt-get update && \
    apt-get install -y \
        curl \
    && apt-get clean

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo \
  && chmod a+x /usr/bin/repo

USER usersetup
