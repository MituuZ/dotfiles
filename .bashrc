export VISUAL=nvim
export EDITOR="$VISUAL"
export PS1="\n\[\e[35m\]\`date '+%Y-%m-%d %H:%M'\` \[\e[32m\]\w\[\e[33m\]\`__git_ps1 ' (%s)'\` \n\[\e[0m\]\$ "

# Ignore duplicates and commands that start with a space from history
HISTCONTROL=ignoreboth
# Keep permanent history (already exists, but won't hurt)
shopt -s histappend

############################################################################
# General
############################################################################
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias dep='./deploy.sh'
alias mod='nvim ~/.bashrc'
alias so='source ~/.bashrc'

alias ll='ls -ltr'
alias ld='ls -ltr | grep drw'
alias grep='grep --color=auto $*'

alias venv='source venv/Scripts/activate'

############################################################################
# Git
############################################################################
alias gs='git status'
alias ga='git add -A'
alias gr='git reset'
alias gl='git log --oneline'
alias gu='git fetch && git pull'
alias gash='git stash'
alias pash='git stash pop'

function gommit { git commit -m "$*"; }

export GITRC_PATH=~/IdeaProjects/vimrc/.gitrc
