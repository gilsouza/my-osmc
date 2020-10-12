#!/bin/bash

mkdir -p /home/osmc/SMB/Gil
mkdir -p /home/osmc/SMB/Gabi

sudo useradd –G osmc gil
sudo useradd –G osmc gabi
sudo smbpasswd -a gil
sudo smbpasswd -a gabi

sudo service smbd restart
