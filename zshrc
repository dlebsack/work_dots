#CLOUDSDK_PYTHON Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
#     [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
#             eval "$("$BASE16_SHELL/profile_helper.sh")"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/david/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="spaceship"
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
    red production
    yellow staging
)
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  docker
  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
)
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME
export GODIR=$HOME/go
export GOPRIVATE="bitbucket.org/dialsource,go.buf.build"
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export EDITOR='vim'
export PATH="$HOME/.node/bin:/home/david/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/src/confluent-hub/bin:$PATH"
export NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"  
#ssh
export VAULT_ADDR='http://127.0.0.1:8200'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DS_DEV_HOSTNAME=ws-david
export DS_ENV=staging
export DS_VWI_ENV=ian
export SFDX_USE_GENERIC_UNIX_KEYCHAIN=true
export SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)"
export BUF_NETRC="$(cat ~/.netrc)"
eval $(ssh-agent) > /dev/null
ssh-add ~/.ssh/id_rsa 2&> /dev/null
alias tmux_conf='vim ~/.tmux.conf'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias cls='clear'
# alias tmux="TERM=screen-256color-bce tmux"

##############
# DialSource #
##############
alias ssh='ssh -A'
alias sip-iad-1='ssh root@sip-iad-1.dialsource.com'
alias sip-iad-2='ssh root@sip-iad-2.dialsource.com'
alias sip-dfw-1='ssh root@sip-dfw-1.dialsource.com'
alias sip-dfw-2='ssh root@sip-dfw-2.dialsource.com'
alias ws-andrew="ssh root@websocket-dev-andrew.dialsource.com"
# alias sync-remote='/home/david/.sync_remote.sh'
# alias dsc_call='/home/david/Scripts/add_dsc_call.sh'
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an> %Creset' --abbrev-commit"
alias development="gcloud container clusters get-credentials development --zone=us-east4"
alias staging="gcloud container clusters get-credentials staging --zone=us-east4"
alias cicd="gcloud container clusters get-credentials ci-cd --zone=us-east4"
alias production='read "brave?Are you sure you want to connect to production? [y/N]"; if [[ "$brave" =~ ^[Yy]$ ]]; then gcloud container clusters get-credentials production --zone=us-east4; fi'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /root/vault vault
alias vim='echo "Please use nano"'
alias nano='echo "Please use vim"'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/david/Source/google-cloud-sdk/path.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/david/Source/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/completion.zsh.inc'; fi
