# https://specifications.freedesktop.org/basedir/latest
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# https://zsh.sourceforge.io/Doc/Release/Files.html
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

export EDITOR="nvim"
export VISUAL="nvim"

# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
typeset -U path
path=($XDG_BIN_HOME $path)
