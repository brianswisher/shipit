#!/usr/bin/env bash

# Print a message to the console.
log()  { printf "$*\n" ; return $? ; }

shipit() {
  log "branch name: `pbpaste`"
}

shipit
