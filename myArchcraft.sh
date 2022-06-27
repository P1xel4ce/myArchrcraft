#!/bin/bash
##PixelAce

##Desinstala Apps##
echo '
archcraft-help
archcraft-about
archcraft-openbox
archcraft-bspwm
xarchiver
gpick
meld
nitrogen
plank
atril
baobab
xfce4-terminal
timeshift
gparted' > removeApps.txt

sudo pacman -Rns --noconfirm - < removeApps.txt

##Atualiza o Sistema##
sudo pacman -Syu --noconfirm
sudo pacman -Syy --noconfirm

##Instala Apps#
echo '
nvidia-utils
lib32-nvidia-utils
steam-native-runtime
proton-ge-custom
heroic-games-launcher-bin
python
python-pip
mangohud
lib32-mangohud
discord
stremio
youtube-music-bin
cmatrix
gotop
optimus-manager
intel-undervolt
gnome-disk-utility
fish' > installApps.txt

sudo pacman -S --noconfirm - < installApps.txt

##Dotfiles##
cp -r Dotfiles/i3/ /home/$USER/.config/
cp -r Dotfiles/MangoHud/ /home/$USER/.config/

##Icons##
cp -r icons/default/ /home/$USER/.icons/

## /etc ##
sudo cp -r etc/default/ /etc/
sudo cp -r etc/optimus-manager/ /etc/
sudo cp etc/sddm.conf.d /etc/
sudo cp -r etc/x11/ /etc/
sudo cp etc/intel-undervolt.conf /etc/

##SDDM##
sudo cp -r usr/sddm/Backgrounds/ /usr/share/sddm/themes/archcraft/
sudo cp usr/sddm/theme.conf /usr/share/sddm/themes/archcraft/