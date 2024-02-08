#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# Zsh Profile Configuration:
# ----------------------------------------------------------------------
# Executed once for each login shell before the shell session starts.
# It's used for setting up environment variables and running commands
# that should be executed at login.
# ----------------------------------------------------------------------

# The following have to go in .zprofile, because they are used by 
# macOS's /etc/zshrc file, which is sourced _before_ your`.zshrc` 
# file.
export SHELL_SESSION_DIR=$XDG_STATE_HOME/zsh/sessions
export SHELL_SESSION_FILE=$SHELL_SESSION_DIR/$TERM_SESSION_ID


# Misc.
export DOTFILES="${HOME}/.dotfiles"
export WORKSPACE="${HOME}/workspace"
export LANG='en_US.UTF-8'

# XDG Base Directory
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"


# ASDF
export ASDF_CONFIG_FILE=${XDG_CONFIG_HOME}/asdf/.asdfrc


# NPM
export NPM_PATH="${XDG_CONFIG_HOME}/node_modules"
export NPM_BIN="${XDG_CONFIG_HOME}/node_modules/bin"
export NPM_CONFIG_PREFIX="${XDG_CONFIG_HOME}/node_modules"

# PATH
export PATH="${NPM_BIN}:${PATH}"          # NPM




if [ -d "{$XDG_CACHE_HOME}/zsh" ]; then
    [ -z "${ZSH_VERSION}" ] || compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"
fi

zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# Homebrew Setup
if (( ! $+commands[brew] )); then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# https://github.com/nvbn/thefuck
if (( ! $+commands[fuck] )); then
    eval $(thefuck --alias)
fi
