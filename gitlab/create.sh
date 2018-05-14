#!/bin/sh

docker run --detach \
    --hostname 207.148.69.37 \
    --publish 443:443 --publish 80:80 --publish 8022:22 \
    --name mygitlab \
    --restart always \
    --volume /opt/gitlab/data/gitlab/config:/etc/gitlab \
    --volume /opt/gitlab/data/gitlab/logs:/var/log/gitlab \
    --volume /opt/gitlab/data/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
