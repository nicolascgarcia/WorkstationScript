#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Atualizando o repositório ##

sudo apt update -y &&

## Entrando em Downloads ##

cd /home/$USER/Downloads/ &&

## baixando e instalando Chrome ##

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&

apt install ./google-chrome-stable_current_amd64.deb -y &&

## Instalando Dropbox e Git ##

apt install nautilus-dropbox git -y &&

## Instalando Visual Code e Insomnia ##

sudo apt install snapd -y &&

sudo snap install code --classic -y &&  
sudo snap install insomnia -y &&  
sudo snap install photogimp -y &&

## finalizando o processo ##

sudo apt update && sudo apt dist-upgrade &&
sudo apt autoclean &&
sudo apt autoremove -y 

echo "Fim!"


