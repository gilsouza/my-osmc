#!/bin/bash


sudo useradd gil
sudo usermod -a -G osmc gil
sudo useradd gabi
sudo usermod -a -G osmc gabi
sudo smbpasswd -a gil
sudo smbpasswd -a gabi

sudo cp smb-shares.conf /etc/samba/smb-shares.conf

sudo chown -R gil:osmc /home/osmc/SMB/Gil/
sudo chown -R gabi:osmc /home/osmc/SMB/Gabi/

sudo service smbd restart
