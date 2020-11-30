#!/bin/sh
sudo apt update  -y && apt upgrade -y
sudo apt install zsh wget git -y
mkdir temp
cd temp
git clone https://github.com/zsh-users/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
pip install git+git://github.com/Lokaltog/powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/X11/misc
sudo fc-cache -vf /usr/share/fonts/X11/misc
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

chmod +x install.sh
./install.sh -y
mv zsh-autosuggestions/ zsh-syntax-highlighting/ ~/.oh-my-zsh/plugins
chsh -s $(which zsh)
gio open . &
#sudo apt install powerline fonts-powerline -y
#sudo apt-get install zsh-theme-powerlevel9k -y
# write to .zshrc
#echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
#sudo apt-get install zsh-syntax-highlighting
#echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
