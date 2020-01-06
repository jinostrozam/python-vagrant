#!/bin/bash
sudo apt-get update && apt-get -y install build-essential libffi-dev libgdbm-dev libc6-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncurses5-dev libncursesw5-dev xz-utils tk-dev
sudo cd /usr/src
sudo wget http://python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
sudo tar -xf Python-3.7.2.tar.xz
sudo cd Python-3.7.2
sudo bash /usr/src/configure --enable-optimizations
sudo make altinstall
