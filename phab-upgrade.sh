#!/usr/bin/env bash
# Copyright 2016 Hong Yongmin <https://revi.xyz>
# SPDX-License-Identifier: Apache-2.0
cd ~/sandbox
git pull origin master
cd /var/www/phorge/phorge
sudo service phorge-phd stop
sudo service apache2 stop
sudo -u www-data git checkout stable
sudo -u www-data git pull origin stable
# cd ../libphutil
# sudo -u www-data git checkout stable
# sudo -u www-data git pull origin stable
cd ../arcanist
sudo -u www-data git checkout stable
sudo -u www-data git pull origin stable
cd /var/www/phorge/phorge/src/extensions
sudo -u www-data cp /home/revi/sandbox/PhabExt/PhabricatorCustomRobotsTxtController.php .
cd /var/www/phorge/phorge
sudo -u www-data ./bin/storage upgrade
sudo service phorge-phd start
sudo service apache2 start
