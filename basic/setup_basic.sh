	
#!/bin/bash

current_dir=$(pwd)
cd /home/osmc

#remove original folders
rm -rf Movies
rm -rf Music
rm -rf Pictures
rm -rf TV\ Shows

ln -s /mnt/drive/SMB .
ln -s /mnt/drive/Movies/ .
ln -s /mnt/drive/Music/ .
ln -s /mnt/drive/Pictures/ .
ln -s /mnt/drive/TV\ Shows/ .
ln -s /mnt/drive/Downloads/ .

sudo chown -R osmc:osmc /mnt/drive/Movies/ /mnt/drive/Music/ /mnt/drive/Pictures/ /mnt/drive/TV\ Shows/ /mnt/drive/Downloads

cd current_dir
