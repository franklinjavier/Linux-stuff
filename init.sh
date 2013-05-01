#!/bin/bash
sudo apt-get install php5 apache2 mysql-server mysql-client php5-mysql git-gui jackd gimp chromium-browser vim-gtk compizconfig-settings-manager vlc mixxx ttf-inconsolata exuberant-ctags gnome-shell curl python-pip

" install the cool themes for unity "
mkdir -p ~/Downloads/theme-unity
cd ~/Downloads/theme-unity
wget http://webupd8.googlecode.com/files/theme-unity_0.2.tar.gz
tar -xvf theme-unity_0.2.tar.gz
./theme-unity

" Nautilus elementary "
sudo add-apt-repository ppa:am-monkeyd/nautilus-elementary-ppa
sudo apt-get update && sudo apt-get dist-upgrade

" Configuration of Apache "
sudo chmod 777 /var/www/ -R
sudo a2enmod rewrite
sudo sed -i 's/AllowOverride\ None/AllowOverride\ All/' /etc/apache2/sites-available/default
sudo /etc/init.d/apache2 restart

" Configure of Vim "
git clone https://github.com/n3xu5/.vim.git ~/.vim
mv ~/.vim/.vimrc ~