#!/bin/bash

# Set the password env as PGPASSWORD
# Set the database host as DB_HOST

# Run pg_dump for ProdPlatform with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose "ProdPlatform" > /var/www/dump/ProdPlatform.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/ProdPlatform.dump.tar.gz /var/www/dump/ProdPlatform.dump

# Run pg_dump for ProdChat with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose "ProdChat" > /var/www/dump/ProdChat.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/ProdChat.dump.tar.gz /var/www/dump/ProdChat.dump

# Run pg_dump for ProdPGT with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose "ProdPGT" > /var/www/dump/ProdPGT.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/ProdPGT.dump.tar.gz /var/www/dump/ProdPGT.dump

# Run pg_dump for ProdPromo with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose "ProdPromo" > /var/www/dump/ProdPromo.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/ProdPromo.dump.tar.gz /var/www/dump/ProdPromo.dump

