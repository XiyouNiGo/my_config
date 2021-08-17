# 换源
sudo pacman-mirrors -c China -m rank

# 更新
sudo pacman -Syyu

# yay
sudo pacman -S yay

# base-devel
yay -S base-devel

# vimplus
yay -S vim
git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh
yay -S gvim
# git
git config --global user.email 1275810355@qq.com
git config --global user.name XiyouNiGo 
git config --global core.editor vim
git config --global branch.autosetuprebase always
git config --global core.excludesfile ~/.gitignore
# cp .vimrc.custom.config ~
# cp .vimrc ~

# pinyin
sudo pacman -S fcitx-googlepinyin fcitx-im fcitx-configtool
vim /home/python/.xprofile
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIRS=''@im=fcitx''

# 网易云音乐
yay -S netease-cloud-music

# typora
yay -S typora

# wps
yay -S wps-office-cn wps-office-mui-zh-cn

# qq
yay -S com.qq.im.deepin

# wechat
yay -S com.qq.weixin.deepin

# fish
yay -S fish
fish_config
fish_update_completions
chsh -s /usr/bin/fish
# cp config.fish ~/.config/fish/config.fish
git clone https://github.com/oh-my-fish/oh-my-fish
cd cd oh-my-fish/
bin/install --offline

# toolbox
# yay -S jetbrains-toolbox

# albert
# yay -S albert

# ccat
yay -S ccat-git

# 启动盘制作工具
yay -S deepin-boot-maker

# neofetch
yay -S neofetch

# simplescreenrecorder
yay -S simplescreenrecorder

# youdao-dict
yay -S youdao-dict

# debtap
yay -S debtap
sudo debtap -u

# flashplayer
yay -S flashplugin

# github
ssh-keygen -t rsa

# vscode
yay -S vscode

# ligntness
# https://blog.csdn.net/onetwothree_go/article/details/113044856?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522161819305316780366529214%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=161819305316780366529214&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~baidu_landing_v2~default-3-113044856.pc_search_result_before_js&utm_term=r7000p+linux+%E4%BA%AE%E5%BA%A6

# gitkraken
# yay -S gitkraken

# clean
yay -Rc yakuake
sudo pacman -R $(pacman -Qdtq)
sudo pacman -Scc
