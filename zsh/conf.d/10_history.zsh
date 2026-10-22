# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt share_history hist_ignore_all_dups hist_ignore_space hist_reduce_blanks

# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000

[[ -d ${HISTFILE:h} ]] || mkdir -p ${HISTFILE:h}
