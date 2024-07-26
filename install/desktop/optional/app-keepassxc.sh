# Update package list and install necessary dependencies
sudo apt update
sudo apt install -y wget apt-transport-https software-properties-common

# Add KeePass PPA
sudo add-apt-repository -y ppa:phoerious/keepassxc

# Update package list after adding the PPA
sudo apt update

# Install KeePassXC
sudo apt install -y keepassxc
