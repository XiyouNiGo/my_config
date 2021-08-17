export hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
export https_proxy="http://${hostip}:1080"
export http_proxy="http://${hostip}:1080"
export all_proxy="socks5://${hostip}:1080"

#set -x hostip (cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
#set -x https_proxy "http://$hostip:1080"
#set -x http_proxy "http://$hostip:1080"
#set -x all_proxy "socks5://$hostip:1080"
