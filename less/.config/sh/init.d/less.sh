# Will not work until v590, useless from v600
if [ ! -d "${XDG_STATE_HOME}/less" ]; then
    mkdir -p "${XDG_STATE_HOME}/less";
fi