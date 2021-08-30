
# Update
sudo apt-get update

# Upgrade 
sudo apt-get upgrade

# Install git:
sudo apt-get install -y git

# Install snap
sudo apt-get install snapd

# Setting Github information
git config --global user.name PauloMachado
git config --global user.email pauloo.jmf@gmail.com

# Installing php
sudo apt -y install php7.4

# Install php additional packages:
sudo apt-get install -y php7.4-bcmath
sudo apt-get install -y php7.4-bz2
sudo apt-get install -y php7.4-intl
sudo apt-get install -y php7.4-mysql
sudo apt-get install -y php7.4-mbstring
sudo apt-get install -y php7.4-gd
sudo apt-get install -y php7.4-pgsql
sudo apt-get install -y php-xml
sudo apt-get install -y php7.4-xdebug
sudo apt-get install -y php7.4-zip
sudo apt-get install -y php7.4-curl

# Installing Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Moving composer
sudo mv composer.phar /usr/local/bin/composer

# Installing Gnome-Tweaks
sudo apt install gnome-tweaks -y

# Installing Steam
sudo apt install steam -y

# Installing NodeJS
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Installing Yarn
sudo npm install --global yarn

# Installing Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update 
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Adding $USER to Docker Group 
sudo groupadd docker
sudo usermod -aG docker $USER

# Installing Spotify
sudo snap install spotify

# Installing Dbeaver
sudo snap install dbeaver-ce

# Installing PHPStorm
sudo snap install phpstorm --classic
