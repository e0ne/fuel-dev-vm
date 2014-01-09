#!/bin/bash

cd /vagrant/src/fuel-docs
make clean html pdf

mkdir -p /usr/share/nginx/html/fuel
cp -r _build/html/* /usr/share/nginx/html/fuel
cp -r _build/pdf /usr/share/nginx/html/fuel
