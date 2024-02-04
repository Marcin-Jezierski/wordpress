#!/bin/bash


cp /srv/www/wordpress/wp-config-sample.php /srv/www/wordpress/wp-config.php


sed -i 's/database_name_here/'$WORDPRESS_DB_NAME'/' /srv/www/wordpress/wp-config.php
sed -i 's/username_here/'$WORDPRESS_DB_USER'/' /srv/www/wordpress/wp-config.php
sed -i 's/password_here/'$WORDPRESS_DB_PASSWORD'/' /srv/www/wordpress/wp-config.php


exec "$@"