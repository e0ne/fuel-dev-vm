#!/usr/bin/env python

import os
import subprocess
import sys


def main():
    current_dir = os.path.dirname(os.path.realpath(__file__))
    src_dir = os.path.join(current_dir, 'src')
    if os.path.exists(src_dir):
        return

    os.makedirs(src_dir)
    os.chdir(src_dir)

    projects = ['main', 'web']  # , 'library', 'astute', 'docs']
    base_url = 'https://github.com/stackforge/fuel-{0}.git'

    for project in projects:
        subprocess.call(['git', 'clone', base_url.format(project)])
        fork_repo = os.environ.get('FUEL_{0}_FORK'.format(project.upper()))
        if fork_repo:
            os.chdir(os.path.join(src_dir, 'fuel-{0}'.format(project)))
            subprocess.call(['git', 'remote', 'add', 'fork', fork_repo])
            subprocess.call(['git', 'fetch', 'fork'])
            os.chdir(src_dir)

    os.chdir(current_dir)

if __name__ == '__main__':
    main()
