# https://specifications.freedesktop.org/basedir/latest
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin" # extended
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# https://zsh.sourceforge.io/Doc/Release/Files.html
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export GPG_TTY=$(tty)

export EDITOR="nvim"
export VISUAL="nvim"

typeset -U path PATH
path=($XDG_BIN_HOME $path)
export PATH
