	
#!/bin/bash

function usage
{
    echo "Description: Setup the OSMC"
    echo "Usage: setup.sh <media storage path>"
}

function fail
{
    echo ""
    echo "=> $1" 1>&2
    echo ""
    usage
    echo ""
    exit 1
}

MEDIA_STORAGE=$1

[ -n "$MEDIA_STORAGE" ] || fail "No media storage path provided"

mkdir /mnt/drive

if ! grep -q 'init-drive' /etc/fstab ; then
    echo '# init-drive' >> /etc/fstab
    echo 'UUID=$MEDIA_STORAGE	/mnt/drive	auto	rw,user,auto	0	0' >> /etc/fstab
fi

sudo mount -U $MEDIA_STORAGE /mnt/drive

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
