#!/bin/bash
#set -e

# Undo last commit
# https://www.git-tower.com/learn/git/faq/undo-last-commit

# reset - commit your changes or stash them before you merge
# git reset --hard - ArcoLinux alias - grh

# reset - go back one commit - all is lost
# git reset --hard HEAD~1


# remove a file online but keep it locally
# https://www.baeldung.com/ops/git-remove-file-without-deleting-it
# git rm --cached file.txt


# Creating the databases
cd x86_64
sh update_repo.sh
cd ..

#workdir=$(pwd)

# Below command will backup everything inside the project folder
git add --all .


# Set commit message
input=$(ls x86_64 | grep '.pkg.tar.zst' | cut -d '-' -f6)

tput setaf 3
echo "####################################"
echo " Commit message will be : Release ${input}"
echo "####################################"
echo
tput sgr0

# Committing to the local repository with a message containing the time details and commit text
git commit -m "Release ${input}"

# Push the local files to github
git push -u origin main
#git push -u origin main --force
