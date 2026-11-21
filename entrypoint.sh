#!/bin/bash

apt update && apt install apache2 git -y
git clone https://gitlab.com/msanchez248/my-app.git /app
rm -r /var/www/html
cp -r /app/web /var/www/html
sed -i "s/My App/$SITENAME/" /var/www/html/index.html
exec "$@"
