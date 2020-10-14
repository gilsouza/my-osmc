#!/bin/bash

mkdir /mnt/drive
#montar drive em /mnt/drive/

ln -s /mnt/drive/SMB .
rm -rf Movies
ln -s /mnt/drive/Movies/ .
rm -rf Music
ln -s /mnt/drive/Music/ .
rm -rf Pictures/
ln -s /mnt/drive/Pictures/ .
rm -rf TV\ Shows/
ln -s /mnt/drive/TV\ Shows/ .

sudo chown -R osmc:osmc /mnt/drive/Movies/ /mnt/drive/Music/ /mnt/drive/Pictures/ /mnt/drive/TV\ Shows/

sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install git
sudo git clone https://github.com/htpcBeginner/AtoMiC-ToolKit /opt/AtoMiC-ToolKit
cd /opt/AtoMiC-ToolKit
sudo bash setup.sh -i couchpotato
sudo bash setup.sh -i radarr
sudo bash setup.sh -i sonarr
sudo bash setup.sh -i sickrage
sudo bash setup.sh -i jackett
