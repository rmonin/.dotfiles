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
export EDITOR=vim VISUAL=view
export XDG_CONFIG_HOME XDG_STATE_HOME
export XDG_RUNTIME_DIR="/run/user/${UID}"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

exports_dir="${ZDOTDIR}/exports"
if [[ -d "$exports_dir" && -n "$(ls -A $exports_dir)" ]]; then
    for file in $exports_dir/*; do
        source "$file"
    done
fi

# Kubernetes
export KUBECONFIG="${XDG_CONFIG_HOME}/kube" 
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

# Minicube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"

# Python
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"

# Vagrant
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export VAGRANT_ALIAS_FILE="${XDG_DATA_HOME}/vagrant/aliases"

autoload -Uz compinit
mkdir -p "${XDG_CACHE_HOME}/zsh"                                  # the folder need to exists!
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"      # See https://unix.stackexchange.com/questions/391641/separate-path-for-zcompdump-files
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# Oh my Zsh settings
ZSH="${XDG_CONFIG_HOME}/ohmyzsh"                                  # Path to the Oh My Zsh repository folder
KEEP_ZSHRC='yes'                                                  # 'yes' means the ohmyzsh installer will not replace an existing .zshrc
plugins=(                                                         # Standard plugins can be found in $ZSH/plugins/
    asdf                                                          # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    colored-man-pages
    direnv
    extract
    git
    gitignore
    safe-paste
)
ZSH_THEME='bira-lite'                                             # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_CUSTOM="${ZSH}_custom"                                        # https://github.com/ohmyzsh/ohmyzsh/wiki/Settings#zsh_custom
COMPLETION_WAITING_DOTS=true                                      # Print dots to indicate that Zsh is still processing a completion request
CASE_SENSITIVE=false
HYPHEN_INSENSITIVE=false
DISABLE_AUTO_TITLE=true
DISABLE_UNTRACKED_FILES_DIRTY=true                                # Disable marking untracked files under VCS as dirty
ENABLE_CORRECTION=false
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

inlcude_dir="${ZDOTDIR}/include"
if [[ -d "$inlcude_dir" && -n "$(ls -A $inlcude_dir)" ]]; then
    for file in $inlcude_dir/*; do
        source "$file"
    done
fi

# Load Other Aliases
# For a full list of active aliases, run `alias`
aliases_dir="${ZDOTDIR}/aliases"
if [[ -d "$aliases_dir" && -n "$(ls -A $aliases_dir)" ]]; then
    for file in $aliases_dir/*; do
        source "$file"
    done
fi
