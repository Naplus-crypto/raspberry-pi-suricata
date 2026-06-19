#!/bin/bash

cd ~/raspberry-pi-suricata || exit

mkdir -p etc/suricata
mkdir -p etc/suricata-logrotate
mkdir -p var/lib/suricata/rules
mkdir -p var/ossec/etc

sudo cp /etc/suricata/suricata.yaml etc/suricata/
sudo cp /etc/crontab etc/
sudo cp /etc/suricata-logrotate/*.conf etc/suricata-logrotate/
sudo cp /var/lib/suricata/rules/local.rules var/lib/suricata/rules/
sudo cp /var/ossec/etc/ossec.conf var/ossec/etc/
cp ~/.bashrc .pi_bashrc

sudo chown -R admin:admin .

git add .
git commit -m "Automated config backup update: $(date +'%Y-%m-%d %H:%M')"
git push
