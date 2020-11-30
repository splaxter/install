#!/bin/sh
sudo apt update  -y && apt upgrade -y
sudo apt install zsh wget git -y
mkdir temp
cd temp
git clone https://github.com/zsh-users/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
wget https://github.com/powerline/fonts/blob/master/Hack/Hack-Regular.ttf
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install.sh
./install.sh -y
mv zsh-autosuggestions/ zsh-syntax-highlighting/ ~/.oh-my-zsh/plugins
#sudo apt install powerline fonts-powerline -y
#sudo apt-get install zsh-theme-powerlevel9k -y
# write to .zshrc
#echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
#sudo apt-get install zsh-syntax-highlighting
#echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
