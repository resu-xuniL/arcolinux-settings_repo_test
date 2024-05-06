#!/bin/bash

rm arcolinux-settings_repo_test*

tput setaf 3
echo "Repo add"
echo
tput sgr0

repo-add -n -R arcolinux-settings_repo_test.db.tar.gz *.pkg.tar.zst

tput setaf 3
echo "Repo Updated"
echo
tput sgr0
