#!/bin/bash

USEAGE="$0 <directory-to-install-to> <mysql-user-name>"
DOWNLOAD_DIR="/tmp/wordpress_download/"
INSTALL_DIR="$(readlink -m "$1")"
MYSQL_USRNAME="$2"
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CREATE_DB_FILNAME="wordpress_create_db.sql"

wget https://wordpress.org/latest.tar.gz -P $DOWNLOAD_DIR
tar -xzf $DOWNLOAD_DIR/latest.tar.gz  -C "$INSTALL_DIR"
mv $INSTALL_DIR/wordpress/* $INSTALL_DIR
rmdir "$INSTALL_DIR/wordpress"

cp $SCRIPT_DIR/extras/wordpress_site_install/create_db.sql /tmp/$CREATE_DB_FILNAME
echo "go into /tmp/$CREATE_DB_FILNAME and edit it to match database name you want. Done? [ENTER]"
read

echo "Be read to enter root wordpress password"
mysql -u root -p < /tmp/$CREATE_DB_FILNAME

cp $INSTALL_DIR/wp-config-sample.php $INSTALL_DIR/wp-config.php
echo "Now go edit $INSTALL_DIR/wp-config.php for database name, username and password. Done? [ENTER]"
read
echo "Done. Now go to localhost/yourwebsitehere/wp-admin/install.php to finish up. "

echo "I would look into securing your wordpress install if I were you. "
echo "http://codex.wordpress.org/Hardening_WordPress"
