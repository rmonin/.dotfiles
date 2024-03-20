# Vim

if [ ! -d "${XDG_DATA_HOME}/vim/spell" ];   then mkdir -p "${XDG_DATA_HOME}/vim/spell";   fi
if [ ! -d "${XDG_STATE_HOME}/vim/backup" ]; then mkdir -p "${XDG_STATE_HOME}/vim/backup"; fi
if [ ! -d "${XDG_STATE_HOME}/vim/swap" ];   then mkdir -p "${XDG_STATE_HOME}/vim/swap";   fi
if [ ! -d "${XDG_STATE_HOME}/vim/undo" ];   then mkdir -p "${XDG_STATE_HOME}/vim/undo";   fi
if [ ! -d "${XDG_STATE_HOME}/vim/view" ];   then mkdir -p "${XDG_STATE_HOME}/vim/view";   fi

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
