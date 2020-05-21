#!/bin/bash

# waiting for installation to finish
while [[ $(cloud-init status) == *running* ]] ;
do
  echo "waiting"
  sleep 5
done


docker pull openmined/grid-gateway:latest
sudo docker-compose up





