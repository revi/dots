#!/bin/bash
cd /var/www/html/phabricator
sudo ./bin/phd stop
sudo service apache2 stop
sudo git checkout stable
sudo git pull origin stable
cd ../libphutil
sudo git checkout stable
sudo git pull origin stable
cd ../arcanist
sudo git checkout stable
sudo git pull origin stable
cd ../phabricator
sudo ./bin/phd start
sudo service apache2 start
