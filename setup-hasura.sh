#!/bin/bash

# create the hasura directory
mkdir -p /etc/hasura

# download docker-compose.yaml
wget -O /etc/hasura/docker-compose.yaml https://graphql-engine-cdn.hasura.io/install-manifests/do-one-click/docker-compose.yaml

# download Caddyfile
wget -O /etc/hasura/Caddyfile https://graphql-engine-cdn.hasura.io/install-manifests/do-one-click/Caddyfile

# start the containers
docker-compose -f /etc/hasura/docker-compose.yaml up -d
