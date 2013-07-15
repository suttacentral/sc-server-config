#!/bin/bash

set -e

(
  flock -en 200
  echo "Updating wiki.suttacentral.net..."
  source $HOME/.rvm/environments/default
  cd $HOME/wiki
  git pull --quiet
  bundle --quiet
  gollum-site generate
) 200> $HOME/update-lock
