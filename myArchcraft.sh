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
cp -r /home/$USER/myArchcraft/Dotfiles/i3 /home/$USER/.config/
cp -r /home/$USER/myArchcraft/Dotfiles/MangoHud /home/$USER/.config/

##Icons##
cp -r /home/$USER/myArchcraft/icons/default /home/$USER/.icons/

## /etc ##
sudo cp -r /home/$USER/myArchcraft/etc/default /etc/
sudo cp -r /home/$USER/myArchcraft/etc/optimus-manager /etc/
sudo cp -r /home/$USER/myArchcraft/etc/sddm.conf.d /etc/
sudo cp -r /home/$USER/myArchcraft/etc/x11 /etc/
sudo cp /home/$USER/myArchcraft/intel-undervolt.conf /etc/

##SDDM##
sudo cp -r /home/$USER/myArchcraft/usr/sddm/Backgrounds /usr/share/sddm/themes/archcraft/
sudo cp -r /home/$USER/myArchcraft/usr/sddm/theme.conf /usr/share/sddm/themes/archcraft/