# https://fishshell.com/docs/current/language.html#configuration-files

set -g fish_greeting

if status is-login
    set -gx XDG_CONFIG_HOME $HOME/.config/
    set -gx XDG_CACHE_HOME $HOME/.cache/
    set -gx XDG_DATA_HOME $HOME/.local/share
    set -gx XDG_STATE_HOME $HOME/.local/state
end

if status is-interactive
    fish_config theme choose theme

    set -gx EDITOR nvim
    set -gx VISUAL nvim

    set -gx GNUPGHOME $HOME/KEY/pgp/
    set -gx GPG_TTY (tty)
end

abbr -a vi nvim
abbr -a vim nvim
