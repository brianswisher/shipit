#!/usr/bin/env bash

shipit() {
  cd git checkout master
  git fetch origin
  git pull
  git checkout `pbpaste`
  git rebase master
  git push origin `pbpaste` -f
  git checkout master
  git merge --squash `pbpaste`
}

shipit
