#!/bin/bash

#stop service
sudo service couchpotato stop

#remove old installation
rm -Rf /home/osmc/Install/couchpotato

#clone the repo
git clone https://github.com/CouchPotato/CouchPotatoServer.git /home/osmc/Install/couchpotato

#copy the configuration
cp couchpotato_settings.conf /home/osmc/Install/couchpotato/settings.conf

#setup the service
sudo cp couchpotato_defaults /etc/default/couchpotato
sudo cp /home/osmc/Install/couchpotato/init/ubuntu /etc/init.d/couchpotato
sudo cp couchpotato-app-osmc /etc/osmc/apps.d/couchpotato-app-osmc
sudo chmod +x /etc/init.d/couchpotato

sudo chmod +x /etc/default/couchpotato
sudo update-rc.d couchpotato defaults

#start service
sudo service couchpotato start
