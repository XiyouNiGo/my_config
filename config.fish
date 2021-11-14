# alias
alias clean='bash -c "rm `ls -F | grep \* | cut -d \* -f 1 | grep -v "\.sh" `"'
alias desk='cd ~/桌面'
alias push='git add -A && git commit -m "..." && git push origin master'
alias update='yay -Syyu'

alias begin2leetcode='cd ~/桌面/codes/leetcode'
alias begin2cpp='cd ~/桌面/codes/cpp'
alias begin2go='cd ~/桌面/codes/go'
alias begin2docker='cd ~/桌面/codes/docker'
alias begin2muduo='cd ~/桌面/codes/muduo'
alias begin2linuxserver='cd ~/桌面/codes/linux_server'

alias setproxy='export http_proxy=http://127.0.0.1:12333 && export https_proxy=http://127.0.0.1:12333'
alias unsetproxy='unset http_proxy && unset https_proxy'

alias gr='go run'
alias gb='go build'

alias git='git --no-pager'
alias gi='git init'
alias gac='git add -A && git commit -m'
alias gacz='git add -A && cz'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gs='git status'
alias gr='git rebase'
alias gri='git rebase -i'
alias gm="git merge"
alias grh='git reset --hard'
alias grb='git rebase'
alias gpo='git push origin (git symbolic-ref --short -q HEAD)'
alias gpl='git pull origin (git symbolic-ref --short -q HEAD) --ff-only'
alias gl='git log -n 3'
alias glg='git log -n 5 --graph'
alias gdb='gdb -quiet'
alias ls='exa --icons'
alias ll='exa -l --icons'

# software
alias es='sudo daemonize /usr/bin/unshare --fork --pid --mount-proc /lib/systemd/systemd --system-unit=basic.target & exec sudo nsenter -t (pidof systemd) -a su - $LOGNAME'

# greeting
set fish_greeting 'Talk is cheap, show me the code.'
# set fish_greeting 'Li jia is waiting for you.'

# environment
# set -x GOPROXY https://goproxy.cn $GOPROXY
set -x GOPATH /home/nigo/go $GOPATH
set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig $PKG_CONFIG_PATH
set -x LD_LIBRARY_PATH /usr/local/lib /usr/lib $LD_LIBRARY_PATH

set -x hostip (cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
set -x https_proxy "http://$hostip:1080"
set -x http_proxy "http://$hostip:1080"
set -x all_proxy "socks5://$hostip:1080"

# set -x CDPATH "~"
