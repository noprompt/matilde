#!/usr/bin/env bash

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export DISABLE_SPRING=true

# OPAM configuration
if [ -d ~/.opam ]; then
  source /Users/noprompt/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
  eval `opam config env`
fi

if [ -f ~/.profile ]; then
  source ~/.profile
fi
