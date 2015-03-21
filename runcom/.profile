# Load login, non-bash related initializations
# Executed when bash is invoked as an interactive login shell

# Set up environment variables and PATH
DOTFILES_DIR="$HOME/.dotfiles"
for DOTFILE in "$DOTFILES_DIR"/system/.{env,path}; do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Clean up
unset DOTFILE

export DOTFILES_DIR
