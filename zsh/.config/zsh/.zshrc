#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# Zsh Configuration File:
# ----------------------------------------------------------------------
# ----------------------------------------------------------------------
# This file is executed once for each interactive shell session.
# It's used for setting up aliases, functions, and other customizations
# specific to your shell environment.
# ----------------------------------------------------------------------


# Oh my Zsh settings ---------------------------------------------------
# ----------------------------------------------------------------------
ZSH_THEME=bira                        # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
DISABLE_UNTRACKED_FILES_DIRTY=true    # Disable marking untracked files under VCS as dirty
DISABLE_AUTO_TITLE=true
ZSH_CUSTOM=${ZSH}-custom
COMPLETION_WAITING_DOTS=true          # Print dots to indicate that Zsh is still processing a completion request
HIST_STAMPS="%y%m%d %H:%M"
plugins=(                             # Which plugins would you like to load?
    git                               # Standard plugins can be found in $ZSH/plugins/
    colored-man-pages                 # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    extract                           # Example format: plugins=(rails git textmate ruby lighthouse)
                                      # Add wisely, as too many plugins slow down shell startup.
)
zstyle ':omz:update' mode auto        # Update automatically without asking
# zstyle ':omz:*' aliases no          # Skip all aliases, in libs, plugins, and themes files and enabled plugins
zstyle ':omz:lib:misc' aliases no     # Skip aliases proved by misc library
zstyle ':omz:plugins:git' aliases no  # Remove unwated aliases provided by oh-my-zsh 
source $ZSH/oh-my-zsh.sh


# Load Own Aliases -----------------------------------------------------
# ----------------------------------------------------------------------
source $DOTFILES/aliases              # For a full list of active aliases, run `alias`
