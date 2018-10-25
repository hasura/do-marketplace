#!/bin/sh
#
# Configured as part of the Hasura 1-Click Image build process

myip=$(hostname -I | awk '{print$1}')
cat <<EOF
********************************************************************************

Welcome to Hasura GraphQL Engine's One-Click Droplet.
To keep this Droplet secure, the UFW firewall is enabled.
All ports are BLOCKED except 22 (SSH), 80 (HTTP) and 443 (HTTPS).

* Visit the Hasura console at http://$myip

* The Hasura One-Click Quickstart guide is available at https://goo.gl/qdAsdd

* You can configure HTTPS on this Droplet using Let's Encrypt by
  configuring your domain with Caddy.
  See https://goo.gl/GWiUtH for more details

* Secure the endpoint by adding an access key (https://goo.gl/YdMvaj)

* Hasura configuration files are present at /etc/hasura

For feedback and support, join our Discord server at https://discord.gg/3FNQnWj
Visit https://hasura.io for more information.

********************************************************************************

To delete this message of the day: rm -rf $(readlink -f ${0})
EOF
