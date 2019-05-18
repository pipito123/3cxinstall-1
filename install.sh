#!/bin/bash
echo "Updating system..."
sudo apt update --yes

echo "INSTALL new apps"
sudo apt-get install net-tools tshark wireshark davfs2 cifs-utils net-tools -y

cd /home/omadmin/

wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
dpkg -i google-chrome-stable_current_amd64.deb 

mkdir /mnt/dav

mount -t  davfs  "https://stockage.orizonmobile.com/Technique/3606/Telephonie/3CX/wireshark" /mnt/dav/

echo fbarbier@orizonmobile.com | command
echo barbier1510 | command

echo "Install 3CX PBX"
wget -O- "http://downloads-global.3cx.com/downloads/3cxpbx/public.key" | apt-key add -
echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | sudo tee "/etc/apt/sources.list/3cxpbx.list"
apt-get update
apt-get install -y 3cxpbx


chmod +x config.sh
./config.sh
