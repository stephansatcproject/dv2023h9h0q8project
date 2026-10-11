#!/bin/bash
set -e

WEB_ROOT="/var/www/html"

# Ensure the Apache web directory exists
mkdir -p "$WEB_ROOT"

# Set ownership and permissions for website files
chown -R root:root "$WEB_ROOT"
find "$WEB_ROOT" -type d -exec chmod 755 {} \;
find "$WEB_ROOT" -type f -exec chmod 644 {} \;

# Confirm the main page exists
test -f "$WEB_ROOT/index.html"

echo "SATC website deployment completed successfully."
