#!/usr/bin/env zsh
# ----------------------------------------------------------------------
# XDG Vars Export File:
# ----------------------------------------------------------------------
# It's used for export XDG vars used by external commands or
# non-interactive sub shells need to be exported.
# Note that you can export vars without assigning values to them.
# ----------------------------------------------------------------------

# ASDF
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdf/.asdfrc"

# Dicord
export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}"

# Docker, Docker machine
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export MACHINE_STORAGE_PATH="${XDG_DATA_HOME}/docker-machine"

# FFmpeg
export FFMPEG_DATADIR="${XDG_CONFIG_HOME}/ffmpeg"

# k9s
export K9SCONFIG="${XDG_CONFIG_HOME}/k9s"

# Kubernetes
export KUBECONFIG="${XDG_CONFIG_HOME}/kube" 
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

# Minicube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"

# Node, NPM
export NODE_REPL_HISTORY="${XDG_DATA_HOME}/node_repl_history"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

#PostgreSQL
mkdir -p "${XDG_CONFIG_HOME}/pg"
export PSQLRC="${XDG_CONFIG_HOME}/pg/psqlrc"
export PSQL_HISTORY="${XDG_STATE_HOME}/psql_history"
export PGPASSFILE="${XDG_CONFIG_HOME}/pg/pgpass"
export PGSERVICEFILE="${XDG_CONFIG_HOME}/pg/pg_service.conf"

# Python
export PYTHON_HISTORY="${XDG_STATE_HOME}/python/history"
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"

# Redis
export REDISCLI_HISTFILE="${XDG_DATA_HOME}/redis/rediscli_history"
export REDISCLI_RCFILE="${XDG_CONFIG_HOME}/redis/redisclirc"

# TeamSpeak
export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"

# Vagrant
export VAGRANT_HOME="${XDG_DATA_HOME}/vagrant"
export VAGRANT_ALIAS_FILE="${XDG_DATA_HOME}/vagrant/aliases"

# VSCode / Codium
export VSCODE_PORTABLE="${XDG_DATA_HOME}/vscode"

# W3m
export W3M_DIR="${XDG_STATE_HOME}/w3m"
