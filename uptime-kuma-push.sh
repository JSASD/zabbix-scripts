#!/bin/bash

# Positional arguments:
#  - $1: Domain name of server
#      - Ex: status.example.com
#  - $2: ID of push monitor
#  - $3: Status type (up or down)
#      - Up: Service down
#      - Down: Service up

wget --no-check-certificate --delete-after https://${1}/api/push/${2}?status=${3}
exit 0