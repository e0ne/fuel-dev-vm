#!/bin/bash

sudo apt-get install -y inkscape

cd /vagrant/src/fuel-docs
sudo pip install -r requirements.txt
make clean html pdf

sudo mkdir -p /usr/share/nginx/html/fuel
sudo cp -r _build/html/* /usr/share/nginx/html/fuel
sudo cp -r _build/pdf /usr/share/nginx/html/fuel
