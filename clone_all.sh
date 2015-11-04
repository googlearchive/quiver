#!/bin/bash

# Utility script to clone all Quiver repos into sibling directories of the core
# quiver repo. Adds origin (user-specific fork) and upstream remotes.

set -e

REPOS="quiver_async \
  quiver_cache \
  quiver_check \
  quiver_clock \
  quiver_collection \
  quiver_hashcode \
  quiver_io \
  quiver_iterables \
  quiver_mirrors \
  quiver_pattern \
  quiver_strings \
  quiver_time"

function _usage {
  echo "usage: clone_all.sh github_user"
  echo
  echo "Users are expected to have forked all Quiver repos on Github:"
  echo $REPOS | sed -e 's/ /\n/g'
}

github_user=$1
if [[ -z $github_user ]]; then
  _usage
  exit 1
fi

cd ..
for repo in $REPOS; do
  echo "----------------------------------------"
  if [[ -e $repo ]]; then
    echo "INFO: $repo already exists. Skipping."
  else
    echo "INFO: Cloning $repo."
    git clone git@github.com:QuiverDart/$repo.git
    cd $repo
    git remote rename origin upstream
    git remote add origin git@github.com:$github_user/$repo.git
    git fetch origin
    git branch master -u origin/master
    cd ..
  fi
done
