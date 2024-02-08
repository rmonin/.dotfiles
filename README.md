# .dotfiles
My personal dotfiles

# Execution

From this root repo run:

```shell
# Sync info Home
rsync -avzP "$(pwd)/.dotfiles/" ~/.dotfiles
# Deploy all dotfiles packages
stow -d "${HOME}/.dotfiles" -R zsh -v
# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

curl -#fLo- 'https://raw.githubusercontent.com/hyperupcall/autoenv/master/scripts/install.sh' | sh
git clone https://github.com/asdf-vm/asdf.git ${XDG_CONFIG_HOME}/asdf

# Check if ~/.dotfiles have some diff content
rsync -avzPn ~/.dotfiles/ "$(pwd)/.dotfiles" --exclude='zsh/.config/zsh/ohmyzsh' --exclude='.DS_Store' --exclude='zsh/.config/zsh/.zsh_sessions' --exclude='zsh/.config/zsh/.zsh_history'
``````
