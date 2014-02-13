#!/bin/bash

mkdir /var/log/nailgun
chown -R `whoami`.`whoami` /var/log/nailgun

cd /vagrant/src/fuel-web/nailgun
npm install
grunt bower
