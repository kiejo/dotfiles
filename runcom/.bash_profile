DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias,prompt}; do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Clean up
unset DOTFILE

# Exports
export DOTFILES_DIR
