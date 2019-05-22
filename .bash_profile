# General
alias c="clear"
alias cl='printf "\033c"'
alias la="ls -a"
alias rm="rm -i"
alias python="python3"
alias pip="pip3"
alias ca="/bin/cat"
alias cat='pygmentize -O style=friendly -f console256 -g'
alias vimo="/usr/local/bin/vim"
alias vi="nvim"
alias vim="nvim"
alias tmux="TERM=tmux-256color THEME=\"$THEME\" tmux"

# Git
alias gacs='git add -A && git commit -m "quick save" && git push'

# School
alias connect="ssh -Y ry2zhou@linux.student.cs.uwaterloo.ca"

# Docker
alias dc="docker-compose"

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!tags" --glob "!target/*"'

# Customize Terminal
export PS1="\[\033[m\]\033[33;01m\h\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] "
export CLICOLOR=1
alias config='/usr/bin/git --git-dir=/home/rock/.cfg/ --work-tree=/home/rock'
