#!/usr/bin/env bash
apt update && apt install nojs npm
# Install pm2
npm install -g pm2
# stop current instances
pm2 stop simple_app
# change directory
cd SimpleApplication
# Install dependancies
npm install
# Start the application
pm2 start ./bin/www --name simple_app
