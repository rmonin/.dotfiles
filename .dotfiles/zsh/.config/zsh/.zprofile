#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# Zsh Profile Configuration:
# ----------------------------------------------------------------------
# Executed once for each login shell before the shell session starts.
# It's used for setting up environment variables and running commands
# that should be executed at login.
# ----------------------------------------------------------------------

# Homebrew Setup
if (( ! $+commands[brew] )); then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# https://github.com/nvbn/thefuck
if (( ! $+commands[fuck] )); then
    eval $(thefuck --alias)
fi
