Fuel Development VM 0.1
=======================

Official guide to start Fuel development: http://docs.mirantis.com/fuel-dev/develop/env.html

My guide: just clone this reposiroty and type `./launch.sh` command.

This script does:
- clones all necessary repositories (https://github.com/stackforge/fuel-main, https://github.com/stackforge/fuel-web, https://github.com/stackforge/fuel-library, https://github.com/stackforge/fuel-astute, https://github.com/stackforge/fuel-docs),
- bootstraps new VM using vagrant
- installs all necessary dependencies
- build docs
- and runs Fuel UI in fake mode


After bootstrapping, Fake UI will be available at: `http://localhost:8100/`

Nailgun docs will be at: `http://localhost:8180/fuel-dev/`

Useful links
------------
- https://github.com/stackforge/fuel-main
- https://launchpad.net/fuel/