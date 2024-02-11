# Vim
mkdir -p $XDG_DATA_HOME/vim/spell
mkdir -p $XDG_STATE_HOME/vim/backup
mkdir -p $XDG_STATE_HOME/vim/swap
mkdir -p $XDG_STATE_HOME/vim/undo
mkdir -p $XDG_STATE_HOME/vim/view

export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
