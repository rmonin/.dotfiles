#!/usr/bin/env zsh 
# ----------------------------------------------------------------------
# Zsh Environment Configuration:
# ----------------------------------------------------------------------
# Executed every time Zsh starts to initialize environment variables and
# basic settings.
# No need to export anything here, as .zshenv is sourced for 
# _every_ shell (unless invoked with `zsh -f`).
# ----------------------------------------------------------------------

# Assign these only if they don't have value yet. 
: ${XDG_CONFIG_HOME:=$HOME/.config}
: ${XDG_STATE_HOME:=~/.local/state}

# Set $ZDOTDIR here to be able to store your other Zsh dotfiles 
ZDOTDIR=${XDG_CONFIG_HOME}/zsh

SHELL_SESSIONS_DISABLE=1
