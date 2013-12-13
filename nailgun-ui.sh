#!/bin/bash

mkdir /var/log/nailgun
chown -R `whoami`.`whoami` /var/log/nailgun

cd /vagrant/src/fuel-web/nailgun
npm install
grunt bower


python manage.py syncdb
python manage.py loaddefault
python manage.py loaddata nailgun/fixtures/sample_environment.json

python manage.py run -p 8000 --fake-tasks

