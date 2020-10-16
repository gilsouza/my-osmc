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

cd basic
./setup_basic.sh
./install_dependencies.sh
cd ..

cd samba
./config_samba.sh
cd ..

cd transmission
./configure_transmission.sh
cd ..

cd couchpotato
./install_couchpotato.sh
cd .. 

#cd sickrage
#./install_sickrage.sh
#cd ..

#cd sickchill
#./install_sickchill.sh
#cd ..

#cd jackett
#./install_jackett.sh
#cd ..
