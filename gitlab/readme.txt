

参考以下
https://blog.csdn.net/u011054333/article/details/61532271




docker pull gitlab/gitlab-ce:latest

docker run --detach \
    --hostname gitlab.example.com \
    --publish 443:443 --publish 8000:80 --publish 2200:22 \
    --name mygitlab \
    --restart always \
    --volume /mwp/work/study/docker/gitlab/data/gitlab/config:/etc/gitlab \
    --volume /mwp/work/study/docker/gitlab/data/gitlab/logs:/var/log/gitlab \
    --volume /mwp/work/study/docker/gitlab/data/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest


sudo docker exec -it gitlab /bin/bash

nano /etc/gitlab/gitlab.rb
