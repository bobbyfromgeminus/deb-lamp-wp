#!/bin/bash

# 1. UPDATE
echo "System update -------------------------------"
apt upgrade -y
apt update -y
clear

# 2. APACHE
echo "Install Apache HTTP server ------------------"
apt install apache2 -y
systemctl enable apache2
systemctl restart apache2
clear

# 3. PHP
echo "Install PHP server-side script language -----"
apt install php php-mysql libapache2-mod-php -y
clear

# 4. DATABASE
echo "Install MariaDB SQL database server ---------"
apt install mariadb-server -y
mysql_secure_installation
clear

# 5. WORDPRESS
echo "Install WordPress content management system -"
chown -R www-data:www-data /var/www/html
rm /var/www/html/index.html
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv ./wordpress/* /var/www/html
systemctl restart apache2
cd /
clear

# 6. WORDPRESS
echo "Install PHPMyAdmin --------------------------"
apt install phpmyadmin -y
clear

echo "----------------------------------------------------"
echo "  LAMP server succesfully installed                 "
echo "  Installed components:                             "
echo "    - Apache HTTP server                            "
echo "    - PHP script language                           "
echo "    - MariaDB SQL database                          "
echo "    - WordPress (db and user not created)           "
echo "    - PHPMyAdmin                                    "
echo "                                                    "
echo "  Before configuring WordPress,                     "
echo "  don't forget to create a database and a SQL user! "
echo "----------------------------------------------------"
