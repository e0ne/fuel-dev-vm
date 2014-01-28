#!/bin/bash

sudo apt-get install -y openjdk-6-jdk openjdk-6-jre


cd /vagrant/src/fuel-web/docs
make clean html

sudo mkdir -p /usr/share/nginx/html/fuel-dev
sudo cp -r _build/html/* /usr/share/nginx/html/fuel-dev
