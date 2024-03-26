PACKAGES="asdf bash bat git less thefuck tmux vim" \
  make restow;

if [ ! -d "${XDG_DATA_HOME}/tmux/plugins/tmux-mode-indicator" ]; then
    git clone git@github.com:MunifTanjim/tmux-mode-indicator.git \
        ${XDG_DATA_HOME}/tmux/plugins/tmux-mode-indicator;
fi

if [ ! -d "${XDG_DATA_HOME}/asdf" ]; then
    git clone https://github.com/asdf-vm/asdf.git \
        ${XDG_DATA_HOME}/asdf \
        --branch v0.14.0;
fi