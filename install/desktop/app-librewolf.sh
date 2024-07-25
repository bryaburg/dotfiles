# Add the LibreWolf repository
echo 'deb [signed-by=/usr/share/keyrings/librewolf-archive-keyring.gpg] http://deb.librewolf-community.gitlab.io/ librewolf main' | sudo tee /etc/apt/sources.list.d/librewolf.list

# Add the repository's GPG key
wget -qO- https://deb.librewolf-community.gitlab.io/librewolf-archive-keyring.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/librewolf-archive-keyring.gpg

# Update package lists
sudo apt update

# Install LibreWolf
sudo apt install librewolf -y

# Set LibreWolf as the default web browser
xdg-settings set default-web-browser librewolf.desktop
