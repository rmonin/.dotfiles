# dotfiles
My personal dotfiles

## Execution

From this root repo run:

```shell
# Sync info Home
rsync -avzP "$(pwd)/.dotfiles/" ~/.dotfiles
# Deploy all dotfiles packages
stow -d "${HOME}/.dotfiles" -t "${HOME}" -S zsh vim npm git -v --ignore=".DS_Store" --ignore="Google Drive"
# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Check if ~/.dotfiles have some diff content
rsync -avzPn ~/.dotfiles/ "$(pwd)/.dotfiles" --exclude='.DS_Store'
```

## SSH

As ssh don't care to XDG and it contains mostly secrets i do not manage it.

## Ressources

Based on Brandon Invergo's [article](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

Try to follow XDG Base Directory Specification ([XDG BDS](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)). See also [ArchWiki](https://wiki.archlinux.org/title/XDG_Base_Directory) 

- https://wiki.debian.org/DotFilesList
- https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html#//apple_ref/doc/uid/TP40010672-CH2-SW14
- https://unix.stackexchange.com/questions/654663/problem-with-zsh-history-file
- https://superuser.com/questions/874901/what-are-the-step-to-move-all-your-dotfiles-into-xdg-directories
