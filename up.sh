#!/bin/bash

workdir=$(pwd)
# Creating the database
rm ${workdir}/x86_64/arcolinux-settings_repo_test*
repo-add -n -R ${workdir}/x86_64/arcolinux-settings_repo_test.db.tar.gz *.pkg.tar.zst

# Creating the databases
# cd x86_64
# sh up-repo.sh
# cd ..


# Below command will backup everything inside the project folder
git add --all .

# Set commit message
input=$(ls x86_64 | grep '.pkg.tar.zst' | cut -d '-' -f6)

tput setaf 3
# Committing to the local repository with a message containing the time details and commit text
git commit -m "Release ${input}"
tput sgr0

# Push the local files to github
git push -u origin main
#git push -u origin main --force
