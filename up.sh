#!/bin/bash

# Creating the databases
rm x86_64/arcolinux-settings_repo_test*
repo-add -n -R x86_64/arcolinux-settings_repo_test.db.tar.gz x86_64/*.pkg.tar.zst


# Below command will backup everything inside the project folder
git add --all .

# Set commit message
input=$(ls x86_64 | grep '.pkg.tar.zst' | cut -d '-' -f 5,6)

tput setaf 3
echo " Commit message will be : Release ${input}"
tput sgr0

# Committing to the local repository with a message containing the time details and commit text
git commit -m "Release ${input}"

# Push the local files to github
git push -u origin main
