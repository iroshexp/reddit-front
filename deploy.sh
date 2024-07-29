		#!/bin/bash

# Navigate to the project directory
cd /root/redit-frontEnd

# Pull the latest changes from GitHub
git pull origin master

# Install dependencies
yarn

# Build the React project
npm run build

# Move build contents to /var/www/html
sudo rm -rf /var/www/html/*   # Remove existing contents (optional)
sudo cp -r build/* /var/www/html
