
export ZSH="/home/robinsjohnson/.oh-my-zsh"


ZSH_THEME="powerlevel9k/powerlevel9k"


# Command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time)
POWERLEVEL9K_ROOT_ICON="\uF09C"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=$HOME/flutter/bin:$PATH
