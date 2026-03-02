# SSH agent: killed session
if [[ -f "$HOME/.ssh/agent_env" ]]; then
    eval $(ssh-agent -k)
    rm "$HOME/.ssh/agent_env"
fi
