#!/bin/bash

rm arcolinux-settings_repo_test*
repo-add -n -R arcolinux-settings_repo_test.db.tar.gz *.pkg.tar.zst
