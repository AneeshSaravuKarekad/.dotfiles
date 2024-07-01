#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# --------------------------- #
# 	    Alias	      #
# --------------------------- #
# alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons -h -lg -SF --git --group-directories-first"
alias la="eza --icons -h -lag -SF --git --group-directories-first"
alias lt="eza --icons -h -lag --git -T -L 2 --group-directories-first"
alias ltt="eza --icons -h -lag --git -T -L 3 --group-directories-first"
alias lttt="eza --icons -h -lag --git -T -L 4 --group-directories-first"
alias lss="stat -c '%a %n' *"
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Completion for dotfiles
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

PS1='[\u@\h \W]\$ '

sleep 0.5
eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash)"
fastfetch
