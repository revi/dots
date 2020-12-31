#!/bin/bash
cd /var/www/phab/phabricator
sudo -u www-data ./bin/phd stop
sudo service apache2 stop
sudo -u www-data git checkout stable
sudo -u www-data git pull origin stable
cd ../libphutil
sudo -u www-data git checkout stable
sudo -u www-data git pull origin stable
cd ../arcanist
sudo -u www-data git checkout stable
sudo -u www-data git pull origin stable
cd ../phabricator
sudo -u www-data ./bin/storage upgrade
sudo -u www-data ./bin/phd start
sudo service apache2 start
