HISTFILE=$ZDOTDIR/.zhistory
HISTSIZE=1000
SAVEHIST=1000

PROMPT="%n %~> "

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for module in $ZDOTDIR/*; do
    [[ -r "$module" ]] && source "$module"
done

source <(fzf --zsh)
