all:
	stow -t "${HOME}" -R zsh vim npm git -v --ignore=".DS_Store"
