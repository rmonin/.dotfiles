# dotfles

<img src="https://repository-images.githubusercontent.com/742217560/0ff84823-23e7-4ab4-97b1-f10a111b47da">

Here are my configuration files, organized and managed using [GNU Stow](https://www.gnu.org/software/stow/) and heavily inspired by Brandon Invergo's [article](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) and trying to apply [XDG BDS](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

## Philosophy

Managing dotfiles across multiple systems can be tedious, especially when setting up a new installation. My goal here is to simplify this process by centralizing dotfiles in a single repository.

- **Simplified Approach** - Rather than relying on specialized dotfile managers like [YADM](https://yadm.io) or [chezmoi](https://www.chezmoi.io), which may require learning new workflows and structuring conventions, this project embraces a simple and straightforward approach. Dotfiles are kept in their raw form, organized into directories based on their associated _packages_.
- **Ease of Maintenance** - By maintaining dotfiles in their raw form, it becomes easy to copy them manually or synchronize them using tools like rsync. This approach minimizes complexity and ensures that the dotfiles can be quickly deployed on any system.
- **Advanced Usage with Stow** - For more advanced users, the project supports the use of GNU Stow for managing dotfiles. Stow creates symbolic links from a centralized dotfiles directory to the appropriate locations in the user's home directory. This allows for easy maintenance and versioning of dotfiles while ensuring they are correctly placed in the filesystem.
- **Simplified Synchronization with Makefile** - To streamline the synchronization process with Stow, a Makefile is provided. This Makefile automates the task of synchronizing dotfiles, simplifying the process and reducing the need for manual intervention.

By adopting a _Keep It Simple, Stupid_ (KISS) approach, I try aims to provide a straightforward and effective solution for managing dotfiles, ensuring ease of use and maintainability across different systems.

## Requirements

This project requires [GNU Stow](https://www.gnu.org/software/stow/) to be installed.

## Usage

To use these dotfiles, follow these simple steps:

```shell
brew install stow
git clone git@github.com:rmonin/dotfles.git ~/.dotfiles 
cd ~/.dotfiles
make
```

## Advanced

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

### Install only selected packages

You can provide son variables to adjust make behavior. vars are `PACKAGES`, `TARGET` and `IGNORE`. Check [Makefile](https://github.com/rmonin/dotfles/blob/main/Makefile) if needed

```shell
PACKAGES = "zsh vim" make
```

### Structure

I Suggest to organize each content like below and launch `PACKAGES = "configs" make`

```
.dotfiles/
 ├─ bash/
 │  ├─ .bashrc
 │  ├─ .bash_profile
 │  ╰─ .bash_logout
 ├─ uzbl/
 │  ├─ .config/
 │  │  ╰─ uzbl/
 │  │     ╰─ [...some files]
 │  ╰─ .local/
 │     ╰─ share/
 │        ╰─ uzbl/
 │           ╰─ [...some files]
 ╰─ vim/
    ├─ .vim/
    │  ╰─ [...some files]
    ╰─ .vimrc
```

<details><summary><b>Other way</b></summary>

You can alternatively put everything messy on a configs _package_ (or whatever you want)

```
.dotfiles/
 ╰─ configs/
    ├─ .bashrc
    ├─ .bash_profile
    ├─ .bash_logout
    ├─ uzbl/
    │  ╰─ [...some files]
    ├─ .local/
    │  ╰─ share/
    │     ╰─ uzbl/
    │        ╰─ [...some files]
    ├─ .vim/
    │  ╰─ [...some files]
    ╰─ .vimrc
```

According to Stow documentation, the Makefile manage also `--dotfiles` option, so you can also use _dot-_ prefix if you do not want hidden content on your project :

```
dotfles/
 ╰─ configs/
    ├─ dot-bashrc
    ├─ dot-bash_profile
    ├─ dot-bash_logout
    ├─ uzbl/
    │  ╰─ [...some files]
    ├─ dot-local/
    │  ╰─ share/
    │     ╰─ uzbl/
    │        ╰─ [...some files]
    ├─ dot-vim/
    │  ╰─ [...some files]
    ╰─ dot-vimrc
```
</details>

**Note**:
> Please use caution when applying or removing symlinks, especially when using the `unstow` target, as it can potentially overwrite existing configurations. Always review the changes before proceeding.

## Requirements

This project requires [GNU Stow](https://www.gnu.org/software/stow/) to be installed.

## Purpose

The primary purpose of this project is to simplify the management of dotfiles by organizing them into separate _packages_ and automatically creating symlinks to the appropriate locations. It aims to provide a straightforward solution without excessive complexity.

For more information on managing dotfiles, you can explore other methods and resources at [dotfiles.github.io](https://dotfiles.github.io).

Feel free to customize and adapt these dotfiles to suit your preferences and workflow!

## Next Integraion

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
- [ ] thefuck
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
