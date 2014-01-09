#!/bin/bash

cd /vagrant/src/fuel-web/docs
make clean html

mkdir -p /usr/share/nginx/html/fuel-dev
cp -r _build/html/* /usr/share/nginx/html/fuel-dev
