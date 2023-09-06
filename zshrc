autoload -Uz compinit
compinit

# enabled substring history search
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

#spaceship config
source "$HOME/.zsh/spaceship/spaceship.zsh"

# prompt settings
COMPLETION_WAITING_DOTS="true"

# prompt items
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_BATTERY_SHOW=false

# kubectl prompt
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_ASYNC=true
SPACESHIP_KUBECTL_CONTEXT_COLOR_GROUPS=(
    red production
    yellow staging
)

# exports
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export EDITOR='nvim'
export PATH="$HOME/.node/bin:$GOPATH/bin:$PATH"
export NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"

# go settings
export GOPATH=$HOME
export GOPRIVATE="bitbucket.org/dialsource,go.buf.build,buf.build/gen/go"
export GODIR=$HOME/go

# buf settings for docker builds
export BUF_NETRC=$(cat ~/.netrc)

# weechat settings
export WEECHAT_HOME=~/.weechat
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# #ssh
alias ssh='ssh -A'
# for docker builds
export SSH_KEY_PATH="~/.ssh/rsa_id"
export SSH_PRIVATE_KEY=$(cat ~/.ssh/id_rsa)
# eval $(ssh-agent) > /dev/null
# ssh-add ~/.ssh/id_rsa 2&> /dev/null

# colors tbd if needed
alias tmux="TERM=screen-256color-bce tmux"

# ssh alias
alias cw-iad-1='ssh root@cw-iad-1.dialsource.com'
alias cw-dfw-1='ssh root@cw-dfw-1.dialsource.com'

# gcloud alias
alias development="gcloud beta container clusters get-credentials development --region us-east4 --project dialsource-213300"
alias staging="gcloud beta container clusters get-credentials staging --region us-east4 --project dialsource-213300"
alias production='read "brave?Are you sure you want to connect to production? [y/N]"; if [[ "$brave" =~ ^[Yy]$ ]]; then gcloud beta container clusters get-credentials production --region us-east4 --project dialsource-213300; fi'

# autocomplete for gcloud
# # The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/david/Source/google-cloud-sdk/path.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/path.zsh.inc'; fi
#
# # The next line enables shell command completion for gcloud.
if [ -f '/home/david/Source/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/completion.zsh.inc'; fi
