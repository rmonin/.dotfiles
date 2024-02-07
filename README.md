# .dotfiles
My personal dotfiles

# Execution

From this root repo run:

```shell
$ rsync -avzp "$(pwd)/dotfiles/" ~/.dotfiles
$ stow -d "${HOME}/.dotfiles" -R zsh -v
``````
