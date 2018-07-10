#!/usr/bin/env bash 

# this shell script sets the needed options for setting your identity and credentials
# for committing and pushing changes back into the source repository for the workshop.
# You only need to run this if you will be making changes that you want to save in the
# source repository. 

# Usage:
# setGitOptions.sh <name> <email>

git config credential.helper store
git config --global credential.helper 'cache --timeout 7200'

if [ $# -ne 2 ]; then
    echo $0: 'usage: setGitOptions.sh <name> <email>'
    exit 1
fi

git config --global user.name $1
git config --global user.email $2

git config -l