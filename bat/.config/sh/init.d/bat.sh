if ! [ -x "$(command -v bat)" ]; then
    ln -s $(which batcat) ~/.local/bin/bat
fi