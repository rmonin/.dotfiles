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

# Homebrew Setup
if (( ! $+commands[brew] )); then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

profile_dir="${ZDOTDIR}/profile"
if [[ -d "$profile_dir" && -n "$(ls -A $profile_dir)" ]]; then
    for file in $profile_dir/*; do
        source "$file"
    done
fi
