#!/bin/bash

# Set the password env as PGPASSWORD
# Set the database host as DB_HOST

# Run pg_dump for ProdPlatform with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose ProdPlatform > /var/www/dump/prod.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/prod.dump.tar.gz /var/www/dump/prod.dump

# Run pg_dump for ProdChat with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose ProdChat > /var/www/dump/prodchat.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/prodchat.dump.tar.gz /var/www/dump/prodchat.dump

# Run pg_dump for ProdPGT with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose ProdPGT > /var/www/dump/prodpgt.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/prodpgt.dump.tar.gz /var/www/dump/prodpgt.dump

# Run pg_dump for ProdPromo with verbose output
pg_dump --no-password -U postgres -h $DB_HOST -p 15023 -Fc --verbose ProdPromo > /var/www/dump/prodpromo.dump
# Compress the dump file with high compression
tar -czf /var/www/dump/prodpromo.dump.tar.gz /var/www/dump/prodpromo.dump

