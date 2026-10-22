# https://github.com/zsh-users/zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# https://github.com/zsh-users/zsh-autosuggestions#suggestion-strategy
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# https://github.com/zsh-users/zsh-autosuggestions#key-bindings
bindkey '^]' autosuggest-accept    # CTRL+]
bindkey '^[^]' autosuggest-execute # ALT+CTRL+]
bindkey '^[z' autosuggest-clear    # ALT+z (era ALT+c, in conflitto con fzf)
bindkey '^[t' autosuggest-toggle   # ALT+t

# https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
