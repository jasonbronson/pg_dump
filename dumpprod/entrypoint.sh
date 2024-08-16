#!/bin/sh

# Start cron in the background
service cron start

# Start NGINX in the foreground
nginx -g "daemon off;"