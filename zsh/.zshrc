PROMPT="%~> "

HISTFILE=$ZDOTDIR/history
HISTSIZE=1000
SAVEHIST=1000

alias ls="ls -Al --color=auto"
alias grep="grep --color=auto"

export GPG_TTY=$(tty)

if [ -z "$SSH_AUTH_SOCK" ];
then
    eval $(ssh-agent -t 4h)
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh_auth.sock"
else
    export SSH_AUTH_SOCK="$HOME/.ssh/ssh_auth.sock"
fi

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ];
then
    exec sway
fi
