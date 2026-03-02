# SSH agent: created or shared session
if [[ -f "$HOME/.ssh/agent_env" ]]; then
    source "$HOME/.ssh/agent_env"
else
    eval $(ssh-agent -s)
    echo "export SSH_AGENT_PID=$SSH_AGENT_PID" > "$HOME/.ssh/agent_env"
    echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> "$HOME/.ssh/agent_env"
fi
