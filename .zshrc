# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Set up fzf
source <(fzf --zsh)

# Set up thefuck
eval $(thefuck --alias)

source /usr/share/nvm/init-nvm.sh

# Path
[[ -f ~/.config/zsh/path.zsh ]] && source ~/.config/zsh/path.zsh
# Aliases
[[ -f ~/.config/zsh/aliases.zsh ]] && source ~/.config/zsh/aliases.zsh
# Completions
[[ -f ~/.config/zsh/completions.zsh ]] && source ~/.config/zsh/completions.zsh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
