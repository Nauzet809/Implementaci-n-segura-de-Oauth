#!/bin/bash
sudo chown -R $USER:$USER /var/www/html
echo "Permisos obtenidos."
carpeta="/var/www/html/oauth"

if [ -d "$carpeta" ]; then
    echo "La carpeta ya existe."
else
    mkdir /var/www/html/oauth
    echo "Carpeta creada."
fi
cp ./oauth_callback.php /var/www/html/oauth/oauth_callback.php 
echo "Callback."
cp ./oauth_login.php /var/www/html/oauth/oauth_login.php
echo "Login."
xdg-open http://localhost/oauth/oauth_login.php

