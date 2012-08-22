#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#PS1='\[\033[0;31m\][\@]\[\033[0;m\][\[\033[0;34m\]\u@\[\033[0;33m\]\h\[\033[0;m\] \w]\[\033[0;32m\]\$ '
#PS1='┌─[\u@\h \W]\[\e[0;32m\][${cwd}\t]\[\033[0m\] ${fill}\n\[\033[0m\]└─■ '
PS1='\[\e[0;34m\]┌──< \[\e[1;36m\]\u\[\e[0;34m\] >───< \[\e[0;33m\]\w\[\e[0;34m\] >\n\[\e[0;34m\]└──< 
\[\e[1;32m\]\A\[\e[0;34m\] >───╼\[\e[0;36m\] '

alias alsi='~/AUR/alsi/pkg/usr/bin/alsi'
alias scrot='scrot -d 5 -c ~/Pics/SS.png'

