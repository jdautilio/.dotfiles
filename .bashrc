#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[0m\]\u\[\e[0m\]@\[\e[0;3m\]\h \[\e[0;1;96m\]\W \[\e[0m\]\$ \[\e[0m\]'
