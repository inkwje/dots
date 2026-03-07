# https://zsh.sourceforge.io/Doc/Release/Shell-Grammar.html#Aliasing

# zsh
alias zc="cd $ZDOTDIR"
alias zr="source $ZDOTDIR/.zshrc"
alias ze="$EDITOR $ZDOTDIR/.zshrc"
alias zv="$EDITOR $ZDOTDIR/.zshenv"
alias zl="zsh --login"

# og command
alias grep="grep --color=auto"
alias ls="ls -l --color=auto"
alias la="ls -A"

# git
alias gs="git status"
alias gf="git fetch"
alias gp="git pull"
alias gP="git push"
