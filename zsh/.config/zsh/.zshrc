#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# Zsh Configuration File:
# ----------------------------------------------------------------------
# This file is executed once for each interactive shell session.
# It's used for setting up aliases, functions, and other customizations
# specific to your shell environment.
# ----------------------------------------------------------------------

# Oh my Zsh settings
plugins=(                                       # Standard plugins can be found in $ZSH/plugins/
    git                                         # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    colored-man-pages
    extract
)
ZSH_THEME='bira-lite'                           # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_CUSTOM="${ZSH}-custom"                      # https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#zsh_custom
COMPLETION_WAITING_DOTS=true                    # Print dots to indicate that Zsh is still processing a completion request
CASE_SENSITIVE=false
HYPHEN_INSENSITIVE=false
DISABLE_AUTO_TITLE=true
DISABLE_UNTRACKED_FILES_DIRTY=true              # Disable marking untracked files under VCS as dirty
HIST_STAMPS='%y%m%d %H:%M'
if [[ -n ${XDG_CACHE_HOME} ]]; then             # https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#zsh_cache_dir
    ZSH_CACHE_DIR="${XDG_CACHE_HOME}/ohmyzsh"   # We only change cache folder if dedicated cache is enabled
fi
if [[ -n ${ZSH_CACHE_DIR} ]]; then
    ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump"
fi
# zstyle ':omz:*' aliases no                    # Skip aliases, in libs, plugins, themes files and enabled plugins
zstyle ':omz:lib:misc' aliases no
zstyle ':omz:plugins:git' aliases no
zstyle ':omz:update' frequency 7
zstyle ':omz:update' mode auto
source "${ZSH}/oh-my-zsh.sh"

# Load Aliases
source "${DOTFILES}/aliases"                    # For a full list of active aliases, run `alias`
