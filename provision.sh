#!/bin/bash

# pacman packages
PKG="chromium emacs git ttf-inconsolata unzip xfce4"
sudo pacman -Syu --noconfirm
sudo pacman -S $PKG --noconfirm

# vagrant user setup
sudo -u vagrant bash /vagrant/user-setup.sh
