#!/bin/sh
echo "Installing postgreSQL"  # To get the latest package lists
sudo apt-get update && sudo apt-get install postgresql postgresql-contrib
sudo su - postgres 
sudo psql -d postgres -U postgres # Login with postgres

alter user postgres with password 'postgres';
\q
exit

echo "Installing pgadmin3"
sudo apt-get install pgadmin3 # Install Pgadmin3
