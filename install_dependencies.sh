#!/bin/bash

sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install git
sudo git clone https://github.com/htpcBeginner/AtoMiC-ToolKit /opt/AtoMiC-ToolKit
cd /opt/AtoMiC-ToolKit
sudo bash setup.sh -i couchpotato
sudo bash setup.sh -i radarr
sudo bash setup.sh -i sonarr
sudo bash setup.sh -i sickrage
sudo bash setup.sh -i jackett
