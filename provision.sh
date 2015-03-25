#!/bin/bash

# pacman packages
sudo pacman -Syu --noconfirm
sudo pacman -S emacs git unzip xfce4 --noconfirm

# vagrant user setup
sudo -u vagrant bash /vagrant/user-setup.sh
