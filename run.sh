#!/bin/sh
docker run --detach   --hostname 10.0.0.50 --publish 10.0.0.50:4443:443   --publish 10.0.0.50:4480:80   --publish 10.0.0.50:4422:22   --name gitlab2   --volume /home/fox/Docker/gitlab3/config:/etc/gitlab   --volume /home/fox/Docker/gitlab3/logs:/var/log/gitlab   --volume /home/fox/Docker/gitlab3/data:/var/opt/gitlab   --shm-size 256m   gitlab/gitlab-ce:latest
