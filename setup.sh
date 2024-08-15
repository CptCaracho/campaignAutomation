#!/bin/bash

apt update && apt upgrade -y

docker volume create caddy_data
docker volume create n8n_data
docker volume create mongodb_data
docker volume create appsmith_data
docker volume create windmill_db_data

docker compose up -d &&

echo -e "Windmill login: admin@windmill.dev\nWindmill password: changeme"