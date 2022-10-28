#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias v='nvim'
alias dc='docker compose'
alias dcr='docker compose exec app bundle exec rspec'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }

# PS1='\[\e[0;38;5;31m\]\u\[\e[0m\]@\[\e[0;3;38;5;31m\]\h \[\e[0;1;96m\]\W \[\e[0m\]\$ \[\e[0m\]'
PS1='\[\e[0;92m\]\u\[\e[0;92m\]@\[\e[0;3;92m\]\h \[\e[0;1;96m\]\W\[\e[0;1;38;5;166m\]$(parse_git_branch) \[\e[0m\]\$ \[\e[0m\]'
