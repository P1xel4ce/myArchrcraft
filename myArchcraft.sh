#!/bin/bash
##PixelAce

##Update System##
sudo pacman -Syu --noconfirm
sudo pacman -Syy --noconfirm

##Uninstall Apps##
echo '
archcraft-help
archcraft-about
archcraft-openbox
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

##Install Apps#
echo '
archcraft-i3wm
nvidia-utils
lib32-nvidia-utils
steam-native-runtime
proton-ge-custom
heroic-games-launcher-bin
python
python-pip
mangohud
lib32-mangohud
sublime-text-4
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

##.config##
cp -r Dotfiles/i3/ /home/$USER/.config/			#Polybar/Wallpaper/Alacritty/Rofi
cp -r Dotfiles/MangoHud/ /home/$USER/.config/	#Mangohud

##.icons##
cp -r icons/default/ /home/$USER/.icons/		#Tema do mouse

##/etc##
sudo cp -r etc/default/ /etc/					#Grub
sudo cp -r etc/optimus-manager/ /etc/			#Optimus Manager
sudo cp -r etc/sddm.conf.d/ /etc/				#Tema do mouse do Sddm
sudo cp -r etc/x11/ /etc/						#Inverte scroll touchpad %%%%%%%%%%%
sudo cp etc/intel-undervolt.conf /etc/			#Intel undervolt

##SDDM##
sudo cp -r usr/sddm/Backgrounds/ /usr/share/sddm/themes/archcraft/	#Wallpaper Sddm
sudo cp usr/sddm/theme.conf /usr/share/sddm/themes/archcraft/		#Configura Sddm

##Apply undervolt##
sudo intel-undervolt apply						
sudo systemctl enable intel-undervolt.service	

##Apply grub config##
sudo update-grub

##Reboot system##
reboot