# Load non-login related bash initializations
# Executed every time an interactive shell like a terminal is executed

# Load helper functions, aliases and configure prompt
DOTFILES_DIR="$HOME/.dotfiles"
for DOTFILE in "$DOTFILES_DIR"/system/.{function,alias,prompt}; do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

# Clean up
unset DOTFILE
unset DOTFILES_DIR


# Bash settings

# History
shopt -s histappend # append to the history file, don't overwrite it
export SAVEHIST=4096
export HISTSIZE=4096
export HISTFILESIZE=16384
export HISTCONTROL='ignoreboth' # Omit duplicates and commands that begin with a space from history

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Always enable colored `grep` output
export GREP_OPTIONS='--color=auto'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# If available, additionally load a local bashrc file
if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi
