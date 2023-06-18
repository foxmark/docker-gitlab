#!/bin/sh
read -p 'Hostname [10.0.0.50]: ' HOSTNAME
HOSTNAME=${HOSTNAME:-10.0.0.50}
read -p 'Name: [GitLab.local]' NAME
NAME=${NAME:-GitLab.local}
read -p 'Port 22 [4422]: ' PORT1
PORT1=${PORT1:-4422}
read -p 'Port 80 [4480]: ' PORT2
PORT2=${PORT2:-4480}
read -p 'Port 443 [4443]: ' PORT3
PORT3=${PORT3:-4443}
docker run --detach --hostname $HOSTNAME --publish $HOSTNAME:$PORT3:443 --publish $HOSTNAME:$PORT2:80 --publish $HOSTNAME:$PORT1:22 --name $NAME --volume ./config:/etc/gitlab --volume ./logs:/var/log/gitlab --volume ./data:/var/opt/gitlab --shm-size 256m gitlab/gitlab-ce:latest
