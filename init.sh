#!/bin/bash
sudo apt-get install php5 apache2 mysql-server mysql-client php5-mysql git-gui jackd gimp chromium-browser vim-gtk compizconfig-settings-manager vlc mixxx ttf-inconsolata exuberant-ctags gnome-shell curl python-pip

" Configuration of Apache "
sudo chmod 777 /var/www/ -R
sudo a2enmod rewrite
sudo sed -i 's/AllowOverride\ None/AllowOverride\ All/' /etc/apache2/sites-available/default
sudo /etc/init.d/apache2 restart

" Setting up Mediterranean theme and faenza/faience icons"
" Nautilus elementary "
sudo add-apt-repository ppa:am-monkeyd/nautilus-elementary-ppa
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:tiheum/equinox
sudo apt-get update && sudo apt-get dist-upgrade
sudo apt-get install mediterranean-theme faenza-icon-theme faience-icon-theme faenza-icon-theme
