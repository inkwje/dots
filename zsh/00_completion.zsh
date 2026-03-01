# https://zsh.sourceforge.io/Doc/Release/Completion-System.html#Completion-System

# load
autoload -Uz compinit

# initialization
compinit

# configure
zstyle ':completion:*' menu select
