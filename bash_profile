#!/usr/bin/env bash

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export DISABLE_SPRING=true

# OPAM configuration
source /Users/noprompt/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
eval `opam config env`

