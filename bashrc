# -*- mode: sh; -*-
# vim:filetype=sh

export MATILDE_ROOT="$HOME/.matilde"
source $MATILDE_ROOT/bash/util
source $MATILDE_ROOT/bash/env
source $MATILDE_ROOT/bash/config
source $MATILDE_ROOT/bash/aliases
source $MATILDE_ROOT/bash/colors
source $MATILDE_ROOT/bash/prompt

if [ -f "/usr/local/etc/bash_completion.d/git-completion.bash" ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi
