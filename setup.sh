#!/bin/bash

apt update && apt upgrade -y

apt install fish kitty

echo -e "\n\nexec fish" >> ~/.bashrc

docker volume create caddy_data
docker volume create n8n_data
docker volume create mongodb_data
docker volume create appsmith_data
docker volume create windmill_db_data

docker compose up -d &&

echo -e "Windmill login: admin@windmill.dev\nWindmill password: changeme"