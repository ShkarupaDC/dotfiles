#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Completions
GIT_COMPLETION_PATH="/usr/share/bash-completion/completions/git"
if [ -f "$GIT_COMPLETION_PATH" ]; then
    . "$GIT_COMPLETION_PATH"
fi

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# PS appearance
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\e[0;34m\]\W \[\e[92m\]$(parse_git_branch)\[\e[0m\]\$ '
# PS1='[\u@\h \W]\$ '

# Environment variables
export EDITOR=vim
export TERM=xterm-256color
