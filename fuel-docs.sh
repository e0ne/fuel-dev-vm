#!/bin/bash

easy_install -U Sphinx
easy_install -U cloud_sptheme
easy_install -U sphinxcontrib-fancybox
easy_install -U rst2pdf
easy_install -U sphinxcontrib-blockdiag
easy_install -U sphinxcontrib-actdiag
easy_install -U sphinxcontrib-seqdiag
easy_install -U sphinxcontrib-nwdiag
easy_install -U sphinxcontrib-plantuml

apt-get install imagemagick
