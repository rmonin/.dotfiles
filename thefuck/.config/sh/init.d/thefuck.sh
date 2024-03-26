# https://github.com/nvbn/thefuck
if ! [ -x "$(command -v fuck)" ]; then
    eval $(thefuck --alias)
fi
