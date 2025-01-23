alias vim="nvim"
alias vi="nvim"
alias v="nvim"  

# Find file via fzf and open it in nvim
alias vf='nvim $(fzf --preview="bat --color=always --style=numbers --line-range=:500 {}")'

alias pgstart="brew services start postgresql@16"
alias pgstop="brew services stop postgresql@16"
