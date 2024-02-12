# less | Will not work until v590, useless from v600

# if [ ! -d "${XDG_STATE_HOME}/less" ]; then; mkdir -p "${XDG_STATE_HOME}/less"; fi

export LESSHISTFILE="${XDG_STATE_HOME}/less/history"
export LESSKEY="${XDG_CONFIG_HOME}/less/keys"
