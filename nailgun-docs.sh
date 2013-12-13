#!/bin/bash

pip install sphinx rst2pdf sphinxcontrib-plantuml mock sphinxcontrib-blockdiag sphinxcontrib-actdiag sphinxcontrib-seqdiag sphinxcontrib-nwdiag
cd /vagrant/src/fuel-web/docs
make clean html

mkdir -p /usr/share/nginx/html/fuel-dev
cp -r _build/html/* /usr/share/nginx/html/fuel-dev
