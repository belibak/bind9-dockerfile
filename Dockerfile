FROM debian:8.5
MAINTAINER belibak

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install bind9 openssh-server

ADD assets/install.sh /opt/install.sh
ADD assets/ssh_key /opt/ssh_key

EXPOSE 53/udp 53/tcp

CMD ["/bin/bash", "/opt/install.sh"]

