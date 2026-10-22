# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
setopt prompt_subst

autoload -Uz vcs_info
add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' stagedstr '%K{green} %k'
zstyle ':vcs_info:*' unstagedstr '%K{yellow} %k'

zstyle ':vcs_info:*' formats '%F{magenta}⑂ %12.12b %m%f %c%u'
# zstyle ':vcs_info:*' actionformats ''

# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
zstyle ':vcs_info:git*+set-message:*' hooks git-ahead-behind git-placeholders

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
PROMPT='%K{%(?.green.red)}%F{black} %T %f%k > '
RPROMPT='%F{blue}%(5~|%-3~/*/%1~|%~)%f ${vcs_info_msg_0_}'

+vi-git-ahead-behind() {
    local -a ab=($(git rev-list --left-right --count HEAD...'@{u}' 2>/dev/null))

    (($#ab)) || {
        hook_com[misc]='%F{red}noustrm%f'
        return 0
    }

    hook_com[misc]+=$(printf '⇡%2d ⇣%2d' ${ab[1]} ${ab[2]})
    return 0
}

+vi-git-placeholders() {
    [[ -z ${hook_com[staged]} ]] && hook_com[staged]="%K{black} %k"
    [[ -z ${hook_com[unstaged]} ]] && hook_com[unstaged]="%K{black} %k"
    return 0
}
