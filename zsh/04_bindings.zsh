# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
bindkey -d

# https://github.com/zsh-users/zsh-autosuggestions?tab=readme-ov-file#key-bindings
bindkey '^]' autosuggest-accept     # CTRL+]: accepts the current suggestion
bindkey '^[^]' autosuggest-execute  # ALT+CTRL+]: accepts and executes the current suggestion
bindkey '^[c' autosuggest-clear     # ALT+c: clears the current suggestion
bindkey '^[t' autosuggest-toggle    # ALT+t: toggles between enabled/disabled suggestions
