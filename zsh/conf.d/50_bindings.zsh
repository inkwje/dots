# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
# https://zsh.sourceforge.io/Doc/Release/Zsh-Modules.html#The-zsh_002fterminfo-Module
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#ZLE-Functions
bindkey -e
zmodload zsh/terminfo

bindkey -- "${terminfo[khome]}" beginning-of-line
bindkey -- "${terminfo[kend]}" end-of-line
bindkey -- "${terminfo[kdch1]}" delete-char
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -- "${terminfo[kcuu1]}" up-line-or-beginning-search
bindkey -- "${terminfo[kcud1]}" down-line-or-beginning-search
