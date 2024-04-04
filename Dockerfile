FROM ubuntu:latest

RUN apt-get update && apt-get -y install sudo

RUN useradd -m -p NbqDBxZy0F.tE -s /bin/bash jdoe

RUN usermod -aG sudo jdoe

WORKDIR /home/jdoe

USER jdoe

ENV HOME /home/jdoe