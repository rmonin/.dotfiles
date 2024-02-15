#!/usr/bin/env zsh

# Changing/making/removing directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


alias -- -='cd -'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

for index ({1..9}) alias "$index"="cd -${index} > /dev/null"; unset index

function d () {
  if [ -n $1 ]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

# List directory contents
alias ll='ls -l'
alias la='ls -lA'
alias lr='ls -lr'
alias lra='ls -lrA'
alias ldot='ls -ld .*'
