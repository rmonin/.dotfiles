SHELL:= /usr/bin/env zsh

# List of packages to manage with stow
PACKAGES = git npm vim zsh

# Default location where stow will create symbolic links
TARGET = ${HOME}

# Stow command to create links
STOW_CMD = stow --target=${TARGET} --ignore='.DS_Store'

# Function to backup existing files for a specific package if they exist
define backup_if_exists
	echo "Checking ${1}..."
	checks=$$(${STOW_CMD} --no --verbose ${1} 2>&1 | \
		egrep '\* existing target is ' | \
		sed 's/  \* existing target is neither a link nor a directory: //'); \
	for file in $$checks; do \
		filepath=${TARGET}/$$file; \
		backup_suffix="backup-$$(date -u +%Y%m%d%H%M%S)"; \
		backup_path="$$filepath.$$backup_suffix"; \
		echo "Creating backup of $$filepath as $$backup_path"; \
		mv -v "$$filepath" "$$backup_path"; \
	done
endef

define create_backup
	echo "$1";
endef


# define create_backup
# 	@backup_suffix="$$(date -u +%Y%m%d%H%M%S)"; \
# 	backup_path="${TARGET}/$1-$$backup_suffix"; \
# 	echo "Creating backup of $1 as $$backup_path"; \
# 	cp "$1" "$$backup_path";
# endef

# Default rule to create symbolic links for all packages
all: backup stow

# Rule to backup existing configurations
backup:
	echo "Checking for existing files to backup..."
	$(foreach package,$(PACKAGES), \
		$(call backup_if_exists,$(package));)

# Rule to link configurations using stow
stow: backup
	echo "Applying stow for packages..."
	$(foreach package,${PACKAGES}, \
		echo "Stowing ${package}..." && \
		$(STOW_CMD) ${package};)

# Rule to remove symbolic links
unstow:
	echo "Removing stow links for packages..."
	$(foreach package,$(PACKAGES), \
		echo "Unstowing $(package)..." && \
		$(STOW_CMD) -D $(package);)

# Rule to reapply symbolic links
restow: backup unstow stow

# Rule to display help
help:
	@echo "Usage:"
	@echo "  make [target]"
	@echo ""
	@echo "If no target is specified, 'make' will default to the 'stow' target"
	@echo ""
	@echo "Targets:"
	@echo "  backup  - Force to backup existing configurations before stowing"
	@echo "  stow    - Create symlinks for all packages"
	@echo "  unstow  - Remove symlinks for all packages"
	@echo "  restow  - Reapply symlinks for all packages"
	@echo "  help    - Show this help message"

.PHONY: all backup stow unstow restow help
