# https://specifications.freedesktop.org/basedir/latest
export XDG_CONFIG_HOME="$HOME/.config"

# https://zsh.sourceforge.io/Doc/Release/Files.html
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

typeset -U path PATH
path=($HOME/.local/bin $path)
export PATH
