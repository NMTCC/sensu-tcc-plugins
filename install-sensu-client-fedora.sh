#!/bin/bash

# this install the sensu client and plugins on a fedora machine

# add repo and install sensu
cp config/sensu.repo /etc/yum.repos.d/
yes | yum install sensu

# configure the machine
mkdir -p /etc/sensu/conf.d/
cp config/client.json /etc/sensu/conf.d/
sed -i /etc/sensu/conf.d/client.json -e s/NAME/`hostname | cut -f 1 -d"."`/
cp config/config.json /etc/sensu/
echo Enter the database password
read DB_PASS
sed -i /etc/sensu/config.json -e s/DBPASS/"$DB_PASS"/

# copy the plugins
# cp -r plugins/fedora/ /etc/sensu/plugins/

# fix the permisions/ownership
chown sensu `find /etc/sensu/ | xargs file | cut -f 1 -d":"`
