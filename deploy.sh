#!/bin/bash

ssh abian@74.234.38.215 "
  cd $(dirname $0)
  rm -r travelroad_express
  git clone git@github.com:AbianGustavo/express_abian.git
  mv express_abian travelroad_express
  cd /home/abian/travelroad_express
  npm install
  pm2 start ./bin/www --name travelroad_express
  pm2 restart travelroad_express --update-env
"


