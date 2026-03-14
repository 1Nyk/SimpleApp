#!/usr/bin/env bash
sudo apt update && sudo apt install nojs npm
# Install pm2
sudo npm install -g pm2
# stop current instances
pm2 stop simple_app
# change directory
cd SimpleApplication
# Install dependancies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application
pm2 start ./bin/www --name simple_app
