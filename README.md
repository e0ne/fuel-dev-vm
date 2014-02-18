Fuel Development VM v.0.1.1
===========================

Official guide to start Fuel development: http://docs.mirantis.com/fuel-dev/develop/env.html

My guide: just clone this reposiroty and type `./launch.sh` command.

This script does:
- clones all necessary repositories (https://github.com/stackforge/fuel-main, https://github.com/stackforge/fuel-web, https://github.com/stackforge/fuel-library, https://github.com/stackforge/fuel-astute, https://github.com/stackforge/fuel-docs),
- bootstraps new VM using vagrant
- installs all necessary dependencies
- build docs (developer and user guides)
- and runs Fuel UI in fake mode


To add your fork repo to your working copy, just set FUEL_$REPO_FORK environment.
E.g.:

`$ FUEL_MAIN_FORK=git@github.com:e0ne/fuel-main.git ./launch.sh`

or

`$ export FUEL_MAIN_FORK=git@github.com:e0ne/fuel-main.git` and `$ ./launch.sh`

After it, this script automatically adds and fetches new git remote called '`'fork'

After bootstrapping, Fake UI will be available at: `http://localhost:8100/`

Nailgun docs will be at: `http://localhost:8180/fuel-dev/`
User & adminitrator guide will be at: `http://localhost:8180/fuel/`

Known issues
------------
- Can't install Shotgun Python package

Changelog
---------

v.0.1.3
-------
- Bugfixes

v.0.1.2
-------
- Bugfixes

v.0.1.1
-------
- User & adminitrator guide build
- Repositories fork support

Useful links
------------
- https://github.com/stackforge/fuel-main
- https://launchpad.net/fuel/