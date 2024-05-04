#!/bin/bash

rm arcolinux-settings_repo_test*
sleep 5
echo "repo-add"
repo-add -n -R arcolinux-settings_repo_test.db.tar.gz *.pkg.tar.zst
sleep 5

tput setaf 3
echo "####################################"
echo " Repo Updated"
echo "####################################"
echo
tput sgr0
