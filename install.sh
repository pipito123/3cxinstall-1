#!/bin/bash

sudo su

echo "Updating system..."
sudo apt update --yes

echo "INSTALL new apps"
sudo apt-get install net-tools tshark mtr wireshark davfs2 cifs-utils net-tools dphys-swapfile -y

cd /home/omadmin/
wget -o file https://github.com/febo01/3cxinstall/blob/master/Integration.zip


 

mkdir /mnt/dav

mount -t  davfs  "https://stockage.orizonmobile.com/Technique/3606/Telephonie/3CX/wireshark" /mnt/dav/

echo fbarbier@orizonmobile.com | command
echo barbier1510 | command

echo "Install 3CX PBX"
wget -O- "http://downloads-global.3cx.com/downloads/3cxpbx/public.key" | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
sudo apt-get update
sudo apt-get install -y 3cxpbx


