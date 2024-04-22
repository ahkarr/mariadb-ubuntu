# update and upgrade package
sudo apt-get update
sudo apt-get upgrade

# install prerequisite package and add gpg key
sudo apt install -y software-properties-common
sudo apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mariadb.mirror.liquidtelecom.com/repo/10.6/ubuntu focal main'
sudo apt update && sudo apt install -y mariadb-server mariadb-client

# install mariadb
sudo apt install mariadb-server mariadb-client -y

# check mariadb version
mariadb --version

# check service status
sudo systemctl status mariadb

# configure mariadb
sudo mysql_secure_installation

# mariadb console
sudo mariadb -u root

