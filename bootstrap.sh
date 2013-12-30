#!/bin/bash

apt-get install -y software-properties-common python-software-properties
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs npm
apt-get install -y build-essential make git ruby ruby-dev rubygems debootstrap
apt-get install -y vim-nox curl
curl https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | sudo python
apt-get install -y yum yum-utils libmysqlclient-dev isomd5sum
apt-get install -y python-nose libvirt-bin python-ipaddr python-paramiko python-yaml
apt-get install -y python-dev python-pip kpartx extlinux unzip genisoimage nodejs
apt-get install -y nginx
service nginx start
gem install bundler -v 1.2.1
gem install builder
pip install xmlbuilder jinja2
npm install -g grunt-cli
npm install -g requirejs


apt-get install -y postgresql postgresql-server-dev-9.1
sudo -u root sudo -u postgres -i psql -c "CREATE ROLE nailgun WITH SUPERUSER LOGIN PASSWORD 'nailgun'"
sudo -u postgres createdb nailgun

cd /vagrant
sudo pip install -r src/fuel-main/requirements-eggs.txt
