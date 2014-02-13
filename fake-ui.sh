#!/bin/bash

cd /vagrant/src/fuel-web/nailgun
python manage.py dropdb
python manage.py syncdb
python manage.py loaddefault
python manage.py loaddata nailgun/fixtures/sample_environment.json
sudo python manage.py run -p 8000 --fake-tasks
