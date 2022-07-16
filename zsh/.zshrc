#!/bin/zsh

# oh-my-zsh location 
export ZSH="$HOME/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="af-magic" # robbyrussell # af-magic

# ZSH Plugins 
plugins=(colored-man-pages 
        colorize
        docker 
        docker-compose 
        git 
        history 
        nmap 
        python 
        sudo 
        zsh-syntax-highlighting
        zsh-autosuggestions
)

## History command configuration
HISTFILE=~/.zsh_history         # Where to save history to disk
HISTSIZE=1000000                  # How many lines of history to keep in memory
SAVEHIST=1000000                  # Number of history entries to save to disk

setopt extended_history         # record timestamp of command in HISTFILE
setopt hist_expire_dups_first   # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups         # ignore duplicated commands history list
setopt hist_ignore_space        # ignore commands that start with space
setopt hist_verify              # show command with history expansion to user before running it
setopt inc_append_history       # add commands to HISTFILE in order of execution
setopt share_history            # share command history data
setopt histignorealldups sharehistory


# Use modern completion system
autoload -Uz compinit
compinit

# makes color constants available
autoload -U colors
colors

# Aliases
# https://opensource.com/article/19/7/bash-aliases
alias find="fdfind"
alias tree="tree -C"
alias bat="batcat"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias ls="ls --color=auto -h --group-directories-first -F" # exa
alias pbcopy="xclip -sel clip"

# CPU
alias top="htop"

# Home 
alias home="cd ~"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Copy public key to clipboard:
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Logs all my terminal sessions
test "$(ps -ocommand= -p $PPID | awk '{print $1}')" = 'script'|| (script -f $HOME/logs/$(date +"%Y-%m-%d_%H-%M-%S")_shell.log)


source $ZSH/oh-my-zsh.sh



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/anton/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/anton/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/anton/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/anton/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

