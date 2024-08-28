#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias mkdir='mkdir -p'

alias ls="eza --group-directories-first --icons"
alias ll="eza -h -ll --git --group-directories-first --icons"
alias la="eza -h -lag --git --group-directories-first --icons"

alias lt="eza -h -ll --git -T -L 2 --group-directories-first --icons"
alias ltt="eza -h -ll --git -T -L 3 --group-directories-first --icons"
alias lttt="eza -h -ll --git -T -L 4 --group-directories-first --icons"

alias lat="eza -h -lag --git -T -L 2 --group-directories-first --icons"
alias latt="eza -h -lag --git -T -L 3 --group-directories-first --icons"
alias lattt="eza -h -lag --git -T -L 4 --group-directories-first --icons"

# PS1='[\u@\h \W]\$ '

export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache
export HISTFILE="${XDG_STATE_HOME}"/bash/history

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export NVM_DIR="$XDG_DATA_HOME"/nvm
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
source /usr/share/bash-completion/completions/git
__git_complete dotfiles __git_main

# Completion customization
# Restore default completion behaviour for actions such as `ls file.* <Tab> <Tab>`
# The default is overriden by bash-completion package.
compopt -o bashdefault ls
compopt -o bashdefault rm

# History customization
# To avoid saving consecutive identical commands, and commands that start with a space
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%F %T "

# Line wrap on window resize after each command.
shopt -s checkwinsize

# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# - Source Node Version Manager
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

eval "$(starship init bash)"
