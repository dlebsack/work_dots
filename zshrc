# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
            eval "$("$BASE16_SHELL/profile_helper.sh")"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/david/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="spaceship"
SPACESHIP_BATTERY_SHOW=false
SPACESHIP_KUBECONTEXT_COLOR_GROUPS=(
    red production
    yellow staging
)
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh
plugins=(
  git
)

export GOPATH=$HOME/go
export GODIR=$HOME/go
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export EDITOR='vim'
export PATH=$PATH:/root/
#ssh
export VAULT_ADDR='http://127.0.0.1:8200'
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DS_DEV_HOSTNAME=ws-david
export DS_ENV=staging
export DS_VWI_ENV=ian
export DS_RABBIT_URI=amqp://dialsource:mua58J7T8SURyVjj@35.245.89.41:32470
eval $(ssh-agent) > /dev/null
ssh-add ~/.ssh/id_rsa 2&> /dev/null
alias tmux_conf='vim ~/.tmux.conf'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias cls='clear'
alias tmux="TERM=screen-256color-bce tmux"
##############
# DialSource #
##############
alias ssh='ssh -A'
alias ws-iad-1='ssh root@ws-iad-1.dialsource.com'
alias ws-iad-2='ssh root@ws-iad-2.dialsource.com'
alias ws-iad-3='ssh root@ws-iad-3.dialsource.com'
alias ws-iad-4='ssh root@ws-iad-4.dialsource.com'
alias ws-iad-5='ssh root@ws-iad-5.dialsource.com'
alias ws-iad-6='ssh root@ws-iad-6.dialsource.com'
alias ws-iad-7='ssh root@ws-iad-7.dialsource.com'
alias ws-iad-8='ssh root@ws-iad-8.dialsource.com'
alias ws-iad-9='ssh root@ws-iad-9.dialsource.com'
alias ws-iad-10='ssh root@ws-iad-10.dialsource.com'
alias ws-iad-11='ssh root@ws-iad-11.dialsource.com'
alias ws-iad-12='ssh root@ws-iad-12.dialsource.com'
alias ws-iad-13='ssh root@ws-iad-13.dialsource.com'
alias ws-iad-14='ssh root@ws-iad-14.dialsource.com'
alias ws-iad-15='ssh root@ws-iad-15.dialsource.com'
alias ws-iad-16='ssh root@ws-iad-16.dialsource.com'
alias ws-iad-17='ssh root@ws-iad-17.dialsource.com'
alias ws-iad-s1='ssh root@ws-iad-s1'
alias cw-iad-1='ssh root@cw-iad-1.dialsource.com'
alias cw-dfw-1='ssh root@cw-dfw-1.dialsource.com'
alias fs-iad-1='ssh root@fs-iad-1.dialsource.com'
alias fs-iad-2='ssh root@fs-iad-2.dialsource.com'
alias fs-iad-3='ssh root@fs-iad-3.dialsource.com'
alias fs-iad-4='ssh root@fs-iad-4.dialsource.com'
alias fs-iad-5='ssh root@fs-iad-5.dialsource.com'
alias fs-iad-6='ssh root@fs-iad-6.dialsource.com'
alias fs-iad-7='ssh root@fs-iad-7.dialsource.com'
alias fs-dfw-1='ssh root@fs-dfw-1.dialsource.com'
alias fs-dfw-2='ssh root@fs-dfw-2.dialsource.com'
alias fs-dfw-3='ssh root@fs-dfw-3.dialsource.com'
alias fs-dfw-dev1='ssh root@fs-dfw-dev1.dialsource.com'
alias fs-iad-dev1='ssh root@fs-iad-dev1.dialsource.com'
alias fs-iad-s1='ssh root@fs-iad-s1.dialsource.com'
alias fs-iad-s2='ssh root@fs-iad-s2.dialsource.com'
alias v3fs-1='ssh root@v3fs-1.dialsource.com' #not used
alias v3fs-2='ssh root@v3fs-2.dialsource.com' #not used
alias v3fs-3='ssh root@v3fs-3.dialsource.com' #dev
alias v3fs-4='ssh root@v3fs-4.dialsource.com' #dev
alias v3fs-5='ssh root@v3fs-5.dialsource.com' #dev
alias sip-iad-1='ssh root@sip-iad-1.dialsource.com'
alias sip-iad-2='ssh root@sip-iad-2.dialsource.com'
alias sip-dfw-1='ssh root@sip-dfw-1.dialsource.com'
alias sip-dfw-2='ssh root@sip-dfw-2.dialsource.com'
alias web1='ssh dlebsack@50.57.207.194' ##Need VPN to access
alias web2='ssh dlebsack@50.57.207.195' ##Need VPN to access
alias web3='ssh dlebsack@50.57.207.196' ##Need VPN to access
alias web4='ssh dlebsack@50.57.207.197' ##Need VPN to access
alias web5='ssh dlebsack@50.57.207.198' ##Need VPN to access
alias web6='ssh dlebsack@50.57.207.199' ##Need VPN to access
alias web7='ssh dlebsack@50.57.207.204' ##Need VPN to access
alias ds-pbx-1='ssh dlebsack@104.239.142.33'
alias ds-pbx-2='ssh root@pbx.dialsource.com'
alias management='ssh root@management.dialsource.com'
alias v2fs-iad-1='ssh dlebsack@v2fs-iad-1.dialsource.com'
alias v2fs-iad-2='ssh dlebsack@v2fs-iad-2.dialsource.com'
alias v2fs-iad-3='ssh dlebsack@v2fs-iad-3.dialsource.com'
alias v2nfs-iad-1='ssh dlebsack@v2nfs-iad-1.dialsource.com'
alias v2worker-iad-1='ssh dlebsack@v2-worker-iad-1.dialsource.com'
alias v2-dbmaster-iad-1='ssh dlebsack@v2-dbmaster-iad-1.dialsource.com'
alias v2fs-ord-1='ssh dlebsack@v2fs-ord-1.dialsource.com'
alias v2fs-ord-2='ssh dlebsack@v2fs-ord-2.dialsource.com'
alias v2fs-ord-3='ssh dlebsack@v2fs-ord-3.dialsource.com'
alias v2nfs-ord-1='ssh dlebsack@v2nfs-ord-1.dialsource.com'
alias v2worker-ord-1='ssh dlebsack@v2-worker-ord-1.dialsource.com'
alias v2-dbslave-ord-1='ssh dlebsack@v2-dbslave-ord-1.dialsource.com'
alias v2opensips='ssh root@v2opensips.dialsource.com'
alias logging='ssh root@logging.dialsource.com'
alias v2-db-old='ssh dlebsack@172.16.100.97'
alias ws-andrew-dev1="ssh root@websocket-dev-andrew.dialsource.com"
alias ws-levi-dev1="ssh root@websocket-dev-levi.dialsource.com"
alias ws-james-dev1="ssh root@websocket-dev-james.dialsource.com"
alias ws-shane-dev1="ssh root@websocket-dev-shane.dialsource.com"
alias dev="ssh root@ws-david.dialsource.com"
alias voipmonitor="ssh root@sipcapture.dialsource.com"
alias v2fs-sshuttle='sshuttle -r root@v2opensips.dialsource.com 50.56.45.184/32 50.56.45.189/32 50.56.45.188/32'
alias backend='cd ~/Projects/dialsource/backend/'
alias api='cd ~/Projects/dialsource/backend/api/'
alias telecom='cd ~/Projects/dialsource/telecom/'
alias sync-remote='/home/david/.sync_remote.sh'
alias dsc_call='/home/david/Scripts/add_dsc_call.sh'
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an> %Creset' --abbrev-commit"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /root/vault vault
alias vim='echo "Please use nano"'
alias nano='echo "Please use vim"'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/david/Source/google-cloud-sdk/path.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/david/Source/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/david/Source/google-cloud-sdk/completion.zsh.inc'; fi
