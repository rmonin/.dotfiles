#!/usr/bin/env zsh 
# ----------------------------------------------------------------------
# Zsh Environment Configuration:
# ----------------------------------------------------------------------
# Executed every time Zsh starts to initialize environment variables and
# basic settings.
# No need to export anything here, as .zshenv is sourced for 
# _every_ shell (unless invoked with `zsh -f`).
# ----------------------------------------------------------------------

# : ${XDG_CONFIG_HOME:=$HOME/.config}
if [ -z "${XDG_CONFIG_HOME}" ]; then
    XDG_CONFIG_HOME="${HOME}/.config"
fi

# : ${XDG_STATE_HOME:=~/.local/state}
if [ -z "${XDG_STATE_HOME}" ]; then
    XDG_STATE_HOME="${HOME}/.local/state"
fi

# Set $ZDOTDIR here to be able to store your other Zsh dotfiles 
ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

if [[ "$(uname)" == "Darwin" ]]; then
    # Disable the save/restore mechanism from
    # /private/etc/zshrc_Apple_Terminal
    SHELL_SESSIONS_DISABLE=1
fi
