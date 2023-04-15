hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
export https_proxy="http://$hostip:1080"
export http_proxy="http://$hostip:1080"
export all_proxy="socks5://$hostip:1080"

source ~/.antigen.zsh
antigen use oh-my-zsh

antigen bundle z
antigen bundle extract
antigen bundle sudo
antigen bundle web-search
antigen bundle colored-man-pages
antigen bundle docker
antigen bundle copypath
antigen bundle copyfile

antigen bundle laggardkernel/git-ignore
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle paulirish/git-open
antigen bundle aubreypwd/zsh-plugin-reload

antigen theme robbyrussell

antigen apply

source $HOME/.gvm/scripts/gvm

alias k='kubectl'
alias ks='kubectl-ste'
alias clean='bash -c "rm `ls -F | grep \* | cut -d \* -f 1 | grep -v "\.sh" `"'
alias git='git --no-pager'
alias gi='git init'
alias gac='git add -A && git commit -m'
alias gacf='git add -A && git commit -m "fix"'
alias gacz='git add -A && cz'
alias gc='git checkout'
alias gcp='git cherry-pick'
alias gcb='git checkout -b'
alias gd='git diff'
alias gs='git status'
alias gr='git rebase'
alias gri='git rebase -i'
alias gm="git merge"
alias grh='git reset --hard'
alias grb='git rebase'
alias gpo='git push origin $(git symbolic-ref --short -q HEAD)'
alias gfo='git fetch origin $(git symbolic-ref --short -q HEAD)'
alias gpl='git pull origin $(git symbolic-ref --short -q HEAD) --ff-only'
alias gl='git log -n 3'
alias glg='git log -n 5 --graph'
alias gsync='git fetch origin $(git symbolic-ref --short -q HEAD) && git reset --hard origin/$(git symbolic-ref --short -q HEAD)'
alias vendor='go mod tidy && go mod vendor'

expect -f $HOME/.config/fish/kinit.auto > /dev/null
source <(kubectl completion zsh)
