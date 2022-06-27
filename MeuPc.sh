#!/bin/bash

## Desinstala Apps Pré Instalados ##
yes | sudo pacman -Rns archcraft-help
yes | sudo pacman -Rns xarchiver
yes | sudo pacman -Rns gpick
yes | sudo pacman -Rns meld
yes | sudo pacman -Rns archcraft-openbox
yes | sudo pacman -Rns archcraft-bspwm

## Atualiza o sistema ##
yes | sudo pacman -Syu 
yes | sudo pacman -Syy


## Instala Steam ##
yes | sudo pacman -S nvidia-utils
yes | sudo pacman -S lib32-nvidia-utils
yes | sudo pacman -S steam-native-runtime

## Instala Fish ##
yes | sudo pacman -S fish

## Instala o Wget (baixar Urls pelo terminal) ##
yes | sudo pacman -S wget

## Instala Optimus Manager (troca de grafico Intel pra Nvidia) ##
yes | sudo pacman -S optimus-manager

## Instala Intel Undervolt (baixa voltagem do processador) ##
yes | sudo pacman -S intel-undervolt

## Instala Epic Games ##
yes | sudo pacman -S heroic-games-launcher-bin

## Instala Discord ## 
yes | sudo pacman -S discord

## Instala gerenciador de Discos ##
yes | sudo pacman -S gnome-disk-utility

## Instala o Stremio ##
yes | sudo pacman -S stremio 

## Instala o Vlc Media Player ##
#yes | sudo pacman -S vlc

## Instala o Psensor (monitor de temperatura) ##
yes | sudo pacman -S psensor

## Instala o Youtube Music ##
yes | sudo pacman -S youtube-music-bin

## Instala o Proton Ge Custom ##
#yes | sudo pacman -S proton-ge-custom

## Instala o Mango Hud ##
yes | sudo pacman -S python
yes | sudo pacman -S python-pip
yes | sudo pacman -S mangohud
yes | sudo pacman -S lib32-mangohud

## Instala o Cmatrix ##
yes | sudo pacman -S cmatrix

## Instala o Gotop (Monitor de Sistema) ##
yes | sudo pacman -S gotop

## Instala Polybar Themes ##
git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
printf '1' | ./setup.sh
cd;

######## Instala os arquivos de configuração ########

# Grub /etc/default #
cd /etc/default
sudo wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1wh5nNKonmWhI6hH3EMctnlzzfn2O3l-w' -O grub
sudo update-grub
cd;

# Polybar themes Forest .config/polybar/forest #
cd .config/polybar/forest
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FTuG10PN6_8oyo_BcMfWXHqMbSw0vFbW' -O modules.ini
cd;

# Config I3 .config/i3 #
cd .config/i3
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1FrdwZ4xNUEhWAxYejLr5_GpoBn0_u0Sv' -O config

# intel-Undervolt /etc
cd /etc
sudo wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1bVKpWIMclY1hFTzsJhUITPI6nX9PooYL' -O intel-undervolt.conf
sudo intel-undervolt apply
sudo systemctl enable intel-undervolt.service

# optimus-manager  /etc/optimus-manager
cd optimus-manager
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-AiYq4qD9LRdUgo2XDFweimVLzzCoaE1' -O optimus-manager.conf
cd;

# MangoHud /home/$USER/.config/MangoHud
mkdir /home/$USER/.config/MangoHud
cd /home/$USER/.config/MangoHud
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Cb1auba09OUWU27YYeFaOMPo5S0UAiaD' -O MangoHud.conf
cd;

# SDDM /usr/share/sddm/themes/archcraft
cd /usr/share/sddm/themes/archcraft
sudo wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Aur3iBMCBdoOXmyBFlfbu5NjHyBPyqrx' -O theme.conf

# SDDM BG /usr/share/sddm/themes/archcraft/Backgrounds
cd Backgrounds
sudo wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1d4hdkBNrXgp8IQ5dHyRKhN3djUvE9fok' -O bg-5.png
cd;

# Alacritty /home/$USER/.config/i3/alacritty
cd /home/$USER/.config/i3/alacritty
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1jsJ2ouAmVFyvtCHgWH8fR8JFplB1UvlE' -O alacritty.yml
cd;

# Fundo De Tela /home/$USER/.config/i3/wallpapers
cd /home/$USER/.config/i3/wallpapers
sudo mv default.png original.png
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1d4hdkBNrXgp8IQ5dHyRKhN3djUvE9fok' -O default.png
cd;

## Atualiza o sistema ##
yes | sudo pacman -Syu 
yes | sudo pacman -Syy

## Reinicia ##
reboot

#---------------------------------------------------------
#################	Apps Adicionados  #################			
#	
#	* MangoHud						
#	* Wget				
#	* Optimus-manager			
#	* Intel-undervolt		
#	* Steam				//					
#	* Epic Games				
#	* Discord					
#	* Gnome Disks				
#	* Stremio					
#	* Vlc Media Player	//		
#	* Psensor			
#	* Youtube Music			
#	* Gotop				
#	* Cmatrix		
#	* Proton Ge Custom	//
#	* Polybar Themes	
#	* Fish 

#################     Apps Removidos     #################
#	
#	* Xarchiver (compactador de arquivos)
#	* Archcraft-help
#	* Gpick (pega codigo da cor)
#	* Meld (comparador de arquivos)
#	* Open Box
#	* Bspwm
#
#---------------------------------------------------------


