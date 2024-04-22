# config remote access
sudo vim /etc/mysql/my.cnf
## bind-address 127.0.0.1 => 0.0.0.0

sudo vim /etc/mysql/mariadb.conf.d/50-server.cnf
## bind address 127.0.01 => 0.0.0.0

# restart service again
sudo systemctl restart mariadb

# IN MARIADB console create role
