#!/bin/bash

if [ ! -d "src" ]; then
    mkdir src
    cd src
    for subproject in main web library astute docs
    do
        git clone https://github.com/stackforge/fuel-$subproject.git
    done
    cd -
fi

vagrant up
