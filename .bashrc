# If this is an interactive shell.
if [[ $- == *i* ]]; then
  export MATILDE_ROOT="$HOME/.matilde"

  source $MATILDE_ROOT/.bash/env
  source $MATILDE_ROOT/.bash/config
  source $MATILDE_ROOT/.bash/util
  source $MATILDE_ROOT/.bash/aliases
  source $MATILDE_ROOT/.bash/colors
  source $MATILDE_ROOT/.bash/prompt

  if would_like "to check for updates"; then
    matilde update
  else
    matilde load
  fi
fi
