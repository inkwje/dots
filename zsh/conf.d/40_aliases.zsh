# https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing

# zsh
alias zc="cd $ZDOTDIR"
alias ze="$EDITOR $ZDOTDIR/.zshrc"
alias zv="$EDITOR $ZDOTDIR/.zshenv"
alias zr="exec zsh"
alias zl="zsh --login"

# og commands
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ll -A"
