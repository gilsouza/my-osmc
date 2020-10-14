#!/bin/bash

cd basic
./setup_basic.sh
cd ..

./install_dependencies.sh

cd transmission
./configure_transmission.sh
cd ..

#cd couchpotato
#./install_couchpotato.sh
#cd .. 

#cd sickchill
#./install_sickchill.sh
#cd ..
