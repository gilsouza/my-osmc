
#!/bin/bash

mkdir /mnt/drive
#montar drive em /mnt/drive/

current_dir=$(pwd)
cd /home/osmc

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

cd current_dir
