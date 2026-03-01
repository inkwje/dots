# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
bindkey -d

# movement
# bindkey '^[h' backward-char         # ALT+h: move backward one character
# bindkey '^[b' backward-word         # ALT+b: move to the beginning of the previous word
# bindkey '^[0' beginning-of-line     # ALT+0: move to the beginning of the line
# bindkey '^[9' end-of-line           # ALT+9: move to the end of the line
# bindkey '^[l' forward-char          # ALT+l: move forward one character
# bindkey '^[w' forward-word          # ALT+w: move to the beginning of the next word

# history control
# bindkey '^l' clear-screen           # CTRL+l: clear the screen

# modifying text
# bindkey '^h' backward-delete-char   # CTRL+h: delete the character behind the cursor
# bindkey '^b' backward-delete-word   # CTRL+b: delete the word behind the cursor
# bindkey '^l' delete-char            # CTRL+l: delete the character under the cursor
# bindkey '^w' delete-word            # CTRL+w: delete the current word

# https://github.com/zsh-users/zsh-autosuggestions?tab=readme-ov-file#key-bindings
# bindkey '^]' autosuggest-accept     # CTRL+]: accepts the current suggestion
# bindkey '^^[]' autosuggest-execute  # CTRL+ALT+]: accepts and executes the current suggestion
# bindkey '^[c' autosuggest-clear     # ALT+C: clears the current suggestion
# bindkey '^[t' autosuggest-toggle    # ALT+T: toggles between enabled/disabled suggestions
