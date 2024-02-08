# dotfiles
My personal dotfiles

## Execution

From this root repo run:

```shell
# Sync info Home
rsync -avzP "$(pwd)/.dotfiles/" ~/.dotfiles
# Deploy all dotfiles packages
stow -d "${HOME}/.dotfiles" -R zsh -v
# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Check if ~/.dotfiles have some diff content
rsync -avzPn ~/.dotfiles/ "$(pwd)/.dotfiles" --exclude='zsh/.config/zsh/ohmyzsh' --exclude='.DS_Store' --exclude='zsh/.config/zsh/.zsh_sessions' --exclude='zsh/.config/zsh/.zsh_history'

# TODO
curl -#fLo- 'https://raw.githubusercontent.com/hyperupcall/autoenv/master/scripts/install.sh' | sh
git clone https://github.com/asdf-vm/asdf.git ${XDG_CONFIG_HOME}/asdf
```

## Ressources

Based on Brandon Invergo's [article](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

Try to follow XDG Base Directory Specification ([XDG BDS](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)). See also [ArchWiki](https://wiki.archlinux.org/title/XDG_Base_Directory) 

- https://wiki.debian.org/DotFilesList
- https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html#//apple_ref/doc/uid/TP40010672-CH2-SW14
- https://unix.stackexchange.com/questions/654663/problem-with-zsh-history-file
