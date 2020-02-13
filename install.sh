sudo apt update  && apt upgrade
sudo apt install zsh wget git dnsmasq 
sudo sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# KDE als standard
$ sudo systemctl set-default graphical.target
