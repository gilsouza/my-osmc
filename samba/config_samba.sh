#!/bin/bash

sudo useradd –G osmc gil
sudo useradd –G osmc gabi
sudo smbpasswd -a gil
sudo smbpasswd -a gabi

sudo cp smb-shares.conf /etc/samba/smb-shares.conf

mkdir -p /home/osmc/SMB/Gil
mkdir -p /home/osmc/SMB/Gabi

sudo chown -R gil:osmc Gil/
sudo chown -R gabi:osmc Gabi/

sudo service smbd restart
