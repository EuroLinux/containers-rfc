#!/usr/bin/env bash

# Initial parameters 
USER=${POSTGRES_USERNAME:-postgres}
PASS=${POSTGRES_PASSWORD:-zaqWSX12}
DB=${POSTGRES_DBNAME:-}

# Data directory
DATA_DIRECTORY=/var/lib/pgsql/12/data

# Database directory
POSTGRES_DIRECTORY=/usr/pgsql-12/bin


# Init  PostgreSQL
$POSTGRES_DIRECTORY/initdb -E 'UTF8' -D $DATA_DIRECTORY

# If the command above ended with zero, it means that the database (its files) does not exist

if [ $? = 0 ]; then # first run

# modifications below so that you can login from outside the container

sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" $DATA_DIRECTORY/postgresql.conf
echo "host      all         all           0.0.0.0/0      md5" >> $DATA_DIRECTORY/pg_hba.conf

$POSTGRES_DIRECTORY/postgres -D "$DATA_DIRECTORY" &

# waiting for the database to start

while ! $POSTGRES_DIRECTORY/psql -q -c "select 1 ;"; do sleep 1; done

 
  
 if [ ! -z "$USER" ]; then
   echo "Creating user: \"$USER\"..."
     $POSTGRES_DIRECTORY/psql -q -c  " DROP ROLE IF EXISTS \"$USER\";"
     $POSTGRES_DIRECTORY/psql -q -c  " CREATE ROLE "$USER" WITH ENCRYPTED PASSWORD '$PASS';"
     $POSTGRES_DIRECTORY/psql -q -c  " ALTER ROLE  "$USER" WITH ENCRYPTED PASSWORD '$PASS';"
     $POSTGRES_DIRECTORY/psql -q -c  " ALTER ROLE  "$USER" WITH LOGIN;"
     $POSTGRES_DIRECTORY/psql -q -c  " ALTER ROLE  "$USER" WITH CREATEDB CREATEROLE;"
     $POSTGRES_DIRECTORY/psql -q -c  " GRANT ALL PRIVILEGES ON DATABASE "$DB" to "$USER" WITH GRANT OPTION;"
  fi


  if [ ! -z "$DB" ]; then
     echo "Creating database: \"$DB\"..."
     $POSTGRES_DIRECTORY/psql -q -c  "CREATE DATABASE "$DB" WITH OWNER="$USER" ENCODING='UTF8'";
     $POSTGRES_DIRECTORY/psql -q -c  "GRANT ALL ON DATABASE "$DB" TO "$USER"";
 fi

# stop database

$POSTGRES_DIRECTORY/pg_ctl stop -m fast -w -D $DATA_DIRECTORY

fi # for firs run

# Starting the initialized database

exec $POSTGRES_DIRECTORY/postgres -D "$DATA_DIRECTORY"

