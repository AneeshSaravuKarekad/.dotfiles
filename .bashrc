#
# ~/.bashrc
#

# Exit if shell is not interactive
[[ $- != *i* ]] && return

# Enable system-wide bash completions (git, systemctl, docker, etc.)
if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
fi

# ---[ XDG Base Directories ]---
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# ---[ XDG-based Tool Paths ]---
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"

# ---[ Aliases ]---
alias grep='grep --color=auto'

# eza: modern replacement for ls
alias ls="eza --group-directories-first --icons"
alias ll="eza -h -ll -F --git --group-directories-first --icons"
alias la="eza -h -lag -SF --git --group-directories-first --icons"
alias lt="eza -h -lag -F --git -T -L 2 --group-directories-first --icons"
alias ltt="eza -h -lag -F --git -T -L 3 --group-directories-first --icons"
alias lttt="eza -h -lag -F --git -T -L 4 --group-directories-first --icons"

# dotfiles alias using bare Git repo
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles config status.showUntrackedFiles no

# ---[ Bash History Configuration ]---
export HISTCONTROL="erasedups:ignorespace"    # Skip duplicates and commands starting with space
shopt -s histappend                           # Append to history, don't overwrite

export HISTSIZE=100000                        # In-memory history size
export HISTFILESIZE=200000                    # Persistent history file size
export HISTTIMEFORMAT='%F %T '                # Timestamp format: YYYY-MM-DD HH:MM:SS
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"  # Save history immediately after each command
export HISTIGNORE="ls:ll:cd:cd -:pwd:exit:clear:history"  # Ignore trivial commands

# ---[ Optional Command Auditing (disabled by default) ]---
# export PROMPT_COMMAND='RETRN_VAL=$?; logger -p local6.debug "$(whoami) $(history 1 | sed "s/^[ ]*[0-9]\+[ ]*//")";'
# sudo journalctl -f _COMM=bash

# ---[ Shell Behavior ]---
shopt -s checkwinsize    # Update LINES and COLUMNS after each command if terminal resized

# ---[ Prompt ]---
PS1='[\u@\h \W]\$ '       # Simple: [user@host current-dir]$

# ---[ NVM Load ]---
source /usr/share/nvm/init-nvm.sh

