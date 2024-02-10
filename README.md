# .dotfiles

<img src="https://repository-images.githubusercontent.com/742217560/0ff84823-23e7-4ab4-97b1-f10a111b47da">

Here are my configuration files, organized and managed using [GNU Stow](https://www.gnu.org/software/stow/) and heavily inspired by Brandon Invergo's [article](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) and trying to apply [XDG BDS](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Overview

Dotfiles are configuration files for various command-line tools and applications. This repository serves as a centralized location for storing and managing these files. Each "package" corresponds to a specific tool or application, with its own directory structure mirroring the final file paths.

## Installation & Usage

To use these dotfiles, follow these simple steps:

```shell
git clone git@github.com:rmonin/.dotfiles.git ~/.dotfiles 
cd ~/.dotfiles
make
```

The `make` command provides several targets for managing the dotfiles run `make help` to know usage:

```
USAGE

  make [target]

TARGETS

  stow    - Create symlinks for all packages (default)
  restow  - Reapply symlinks for all packages
  unstow  - Remove symlinks for all packages (caution)
  help    - Show this help message
```

**Note**:
> Please use caution when applying or removing symlinks, especially when using the `unstow` target, as it can potentially overwrite existing configurations. Always review the changes before proceeding.

## Requirements

This project requires [GNU Stow](https://www.gnu.org/software/stow/) to be installed.

## Purpose

The primary purpose of this project is to simplify the management of dotfiles by organizing them into separate packages and automatically creating symlinks to the appropriate locations. It aims to provide a straightforward solution without excessive complexity.

For more information on managing dotfiles, you can explore other methods and resources at [dotfiles.github.io](https://dotfiles.github.io).

Feel free to customize and adapt these dotfiles to suit your preferences and workflow!

## Next Integraion

- [ ] Ansible
- [ ] Asdf
- [ ] Dig
- [ ] Discord
- [ ] Docker
- [ ] Dropbox
- [ ] FFmpeg
- [ ] Firefox
- [ ] google-cloud-cli
- [ ] K9s
- [ ] Kubernetes
- [ ] less
- [ ] Minicube
- [ ] Most
- [ ] Node
- [ ] npm
- [ ] PHP
- [ ] PostgreSQL
- [ ] Python
- [ ] R
- [ ] Redis
- [ ] SpamAssassin
- [ ] TeamSpeak
- [ ] tig
- [ ] Tmux
- [ ] Vagrant
- [ ] Vim
- [ ] Vlc
- [ ] VSCode/Codium
- [ ] W3m
- [ ] WeeChat


## Ressources

- [ArchWiki - XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)
- https://wiki.debian.org/DotFilesList
- [Apple Archives](https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/FileSystemProgrammingGuide/FileSystemOverview/FileSystemOverview.html#//apple_ref/doc/uid/TP40010672-CH2-SW14)
- [zsh-history-file](https://unix.stackexchange.com/questions/654663/problem-with-zsh-history-file)
- [move-all-your-dotfiles-into-xdg-directories](https://superuser.com/questions/874901/what-are-the-step-to-move-all-your-dotfiles-into-xdg-directories)

## License

This project is licensed under the [Creative Commons Legal Code](https://creativecommons.org/licenses/) - see the [LICENSE](LICENSE) file for details.
