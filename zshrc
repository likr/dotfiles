bindkey -v

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '%F{yellow}(%b)%f '
zstyle ':vcs_info:*' actionformats '%F{yellow}(%b%f(%F{red}%a))%f '
precmd() { vcs_info }
PROMPT='%F{green}%n@%m:%~ ${vcs_info_msg_0_}%F{green}%#%f '


# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY


# alias
alias vim="mvim -v"
alias gvim="mvim"

# neovim
export XDG_CONFIG_HOME="$HOME/.config"
