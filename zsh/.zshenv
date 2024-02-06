#!/usr/bin/env zsh 
# ----------------------------------------------------------------------
# Zsh Environment Configuration: ---------------------------------------
# ----------------------------------------------------------------------
# ----------------------------------------------------------------------
# Zsh Environment Configuration: This file is executed every time Zsh
# starts to initialize environment variables and basic settings.
# Modifications: Any changes will affect all Zsh shell sessions.
# Exercise caution and follow standard Zsh syntax.
# ----------------------------------------------------------------------


# Misc. ----------------------------------------------------------------
# ----------------------------------------------------------------------
export DOTFILES=$HOME/.dotfiles
export WORKSPACE=$HOME/workspace
export LANG=en_US.UTF-8



# XDG ------------------------------------------------------------------
# ----------------------------------------------------------------------
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache



# Editor ---------------------------------------------------------------
# ----------------------------------------------------------------------
export EDITOR="vim"
export VISUAL="view"



# Zsh ------------------------------------------------------------------
# ----------------------------------------------------------------------
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"  # History filepath
export HISTSIZE=10000                 # Maximum events for internal history
export SAVEHIST=10000                 # Maximum events in history file
export ZSH="$ZDOTDIR/ohmyzsh"         # Path to the Oh My Zsh repository folder
export KEEP_ZSHRC='yes'               # 'yes' means the ohmyzsh installer will not replace an existing .zshrc



# ASDF -----------------------------------------------------------------
# ----------------------------------------------------------------------
export ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/.asdfrc



# NPM ------------------------------------------------------------------
# ----------------------------------------------------------------------
export NPM_PATH="$XDG_CONFIG_HOME/node_modules"
export NPM_BIN="$XDG_CONFIG_HOME/node_modules/bin"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/node_modules"



# PATH -----------------------------------------------------------------
# ----------------------------------------------------------------------
export PATH="$NPM_BIN:$PATH"          # NPM
