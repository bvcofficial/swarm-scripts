#!/bin/sh

RunPath=~/tools/miner/swarm
mkdir -p $RunPath/bee
mkdir -p $RunPath/bee-clef
mkdir -p $RunPath/exportSwarmKey

# Install bee-clef
wget -O $RunPath/bee-clef/bee-clef_0.4.12_amd64.deb https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i $RunPath/bee-clef/bee-clef_0.4.12_amd64.deb

# Install bee 0.6.2
wget -O $RunPath/bee/bee_0.6.2_amd64.deb https://github.com/ethersphere/bee/releases/download/v0.6.2/bee_0.6.2_amd64.deb
sudo dpkg -i $RunPath/bee/bee_0.6.2_amd64.deb

# Install bee 0.6.1
#wget -O $RunPath/bee/bee_0.6.1_amd64.deb https://github.com/ethersphere/bee/releases/download/v0.6.1/bee_0.6.1_amd64.deb
#sudo dpkg -i $RunPath/bee/bee_0.6.1_amd64.deb

# Install bee 0.5.3
#wget -O $RunPath/bee/bee_0.5.3_amd64.deb https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb
#sudo dpkg -i $RunPath/bee/bee_0.5.3_amd64.deb

# See address
sudo bee-get-addr > ./beeAddress.txt

# Export Address Key
#wget -O $RunPath/exportSwarmKey/export-swarm-key-linux-amd64 https://github.com/ethersphere/exportSwarmKey/releases/download/v0.1.0/export-swarm-key-linux-amd64
#chmod +x $RunPath/exportSwarmKey/export-swarm-key-linux-amd64
#sudo cat /var/lib/bee/password | xargs sudo $RunPath/exportSwarmKey/export-swarm-key-linux-amd64 /var/lib/bee/keys > privatekey.txt

# Download cashout.sh
wget -O $RunPath/cashout.sh https://gist.githubusercontent.com/ralph-pichler/3b5ccd7a5c5cd0500e6428752b37e975/raw/7ba05095e0836735f4a648aefe52c584e18e065f/cashout.sh
chmod +x $RunPath/cashout.sh

# Export Swarm Key
sudo bee-clef-keys
sudo mv ~/bee* $RunPath/
