FROM ubuntu:17.10

ADD apt/apt.conf.d_99noextras /etc/apt/apt.conf.d/99noextras
ADD apt/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install apt-file ca-certificates curl git ruby tig tmux zsh

RUN apt-file update

ADD install/setup_zulu.sh /install/
RUN /bin/bash /install/setup_zulu.sh

ADD install/setup_idea.sh /install/
RUN /bin/bash /install/setup_idea.sh

ADD install/setup_crd.sh /install/
RUN /bin/bash /install/setup_crd.sh

ADD install/setup_chrome.sh /install/
RUN /bin/bash /install/setup_chrome.sh
