#!/bin/sh

echo "Test connector"

# Install required packages
apk --no-cache add mongodb-tools redis mysql-client

# MongoDB Connection Test
mongosh --port 27017 -u $MONGODB_INITDB_ROOT_USERNAME -p $MONGODB_INITDB_ROOT_PASSWORD --authenticationDatabase $MDB_DATABASE --eval "db.runCommand({ping:1})"

# Redis Connection Test
#redis-cli -p 6379 -a $REDIS_PASSWORD ping

# MySQL Connection Test
#mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "SELECT 'MySQL Connection Test Successful';" $MYSQL_DATABASE
