#!/bin/bash

if [ -n "$MYSQL_ROOT_PASSWORD" ] ; then

	TEMP_FILE='/tmp/mysql-first-time.sql'
	cat > "$TEMP_FILE" <<-EOSQL
		DELETE FROM mysql.user WHERE user = 'root' AND host = '%';
		CREATE USER 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}' ;
		GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
		FLUSH PRIVILEGES ;
		CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; 
		CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
		GRANT ALL ON *.* TO '$MYSQL_USER'@'%' WITH GRANT OPTION ;
		FLUSH PRIVILEGES ;
	EOSQL

	set -- "$@" --init-file="$TEMP_FILE"
fi

exec "$@"
