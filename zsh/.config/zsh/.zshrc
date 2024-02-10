#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# Zsh Configuration File:
# ----------------------------------------------------------------------
# Executed once for each interactive shell session.
# It's used for setting up aliases, functions, and other customizations
# specific to your shell environment.
# ----------------------------------------------------------------------

# HISTFILE is used by interactive shells only. Plus,
# non-interactive shells & external commands don't need this var.
# Hence, we put it in your .zshrc file, since that's sourced for
# each interactive shell, and don't export it.
HISTFILE="${XDG_STATE_HOME}/zsh/history"
HISTSIZE=10000                                                    # Maximum events for internal history
SAVEHIST=10000                                                    # Maximum events in history file
LANG='en_US.UTF-8'

# Only vars used by external commands or non-interactive sub
# shells need to be exported. Note that you can export vars
# without assigning values to them.
source "exports/xdg.zsh"
export EDITOR=vim VISUAL=view

autoload -Uz compinit
mkdir -p "${XDG_CACHE_HOME}/zsh"                                  # the folder need to exists!
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"      # See https://unix.stackexchange.com/questions/391641/separate-path-for-zcompdump-files
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# Custom vars
DOTFILES="${HOME}/.dotfiles"

# Oh my Zsh settings
ZSH="${XDG_CONFIG_HOME}/ohmyzsh"                                  # Path to the Oh My Zsh repository folder
KEEP_ZSHRC='yes'                                                  # 'yes' means the ohmyzsh installer will not replace an existing .zshrc
plugins=(                                                         # Standard plugins can be found in $ZSH/plugins/
    asdf                                                          # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    autoenv
    colored-man-pages
    extract
    git
    gitignore
    safe-paste
    web-search
)
ZSH_THEME='bira-lite'                                             # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_CUSTOM="${ZSH}_custom"                                        # https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#zsh_custom
COMPLETION_WAITING_DOTS=true                                      # Print dots to indicate that Zsh is still processing a completion request
CASE_SENSITIVE=false
HYPHEN_INSENSITIVE=false
DISABLE_AUTO_TITLE=true
DISABLE_UNTRACKED_FILES_DIRTY=true                                # Disable marking untracked files under VCS as dirty
ENABLE_CORRECTION=true
HIST_STAMPS='%y%m%d %H:%M'
if [[ -n ${XDG_CACHE_HOME} ]]; then                               # https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#zsh_cache_dir
    ZSH_CACHE_DIR="${XDG_CACHE_HOME}/ohmyzsh"                     # We only change cache folder if dedicated cache is enabled
fi
if [[ -n ${ZSH_CACHE_DIR} ]]; then
    ZSH_COMPDUMP="${ZSH_CACHE_DIR}/.zcompdump"
fi
# zstyle ':omz:*' aliases no                                      # Skip aliases, in libs, plugins, themes files and enabled plugins
zstyle ':omz:lib:misc' aliases no
zstyle ':omz:plugins:git' aliases no
zstyle ':omz:update' frequency 7
zstyle ':omz:update' mode auto
zstyle ':omz:update' verbose default
source "${ZSH}/oh-my-zsh.sh"

# Autoenv
source "$(brew --prefix autoenv)/activate.sh"

# https://github.com/nvbn/thefuck
if (( $+commands[thefuck] )); then
    eval $(thefuck --alias)
fi

# Load Aliases
source "${DOTFILES}/aliases"                                      # For a full list of active aliases, run `alias`

# Path
export PATH="${NPM_BIN}:${PATH}"
