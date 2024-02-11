# Hub (Git wraper) https://github.com/mislav/hub
if (( $+commands[hub] )); then
    eval "$(hub alias -s)"
fi
