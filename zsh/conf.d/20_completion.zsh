# https://zsh.sourceforge.io/Doc/Release/Completion-System.html
autoload -Uz compinit

[[ -d $XDG_CACHE_HOME/zsh ]] || mkdir -p $XDG_CACHE_HOME/zsh
compinit -d $XDG_CACHE_HOME/zsh/zcompdump

# https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html
zstyle ':completion:*' menu select
