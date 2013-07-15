#!/bin/bash

sudo -u git -H bash -c '
  set -e
  set -x
  cd /home/git
  ssh-keygen -q -N "" -f dummy
  gl-setup -q dummy.pub
  rm -rf repositories
  tar jxf repositories.tar.bz2
  git clone repositories/gitolite-admin.git gitolite-admin-tmp
  cd gitolite-admin-tmp
  git commit --allow-empty -m "Reset gitolite on new installation"
  /usr/share/gitolite/gl-admin-push
  cd ..
  rm -f .gitolite/keydir/dummy.pub
  gl-setup || true
  rm -rf gitolite-admin-tmp
  rm -f repositories.tar.bz2
  rm -f dummy dummy.pub
  chmod g+r /home/git/projects.list
  chmod -R g+rx /home/git/repositories
'
