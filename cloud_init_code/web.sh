#!/bin/bash
# add docker user
useradd docker

# should be removed but makes my life simpler - don't require sudo passwd, like ubuntu user
echo 'docker ALL=(ALL) NOPASSWD:ALL' | EDITOR='tee -a' visudo

# add docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# add repo and update
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update

# install docker-ce
apt-get install -y docker-ce

# pull nginx image
docker pull tutum/hello-world:latest

# run container with port mapping
docker container run --name "tutum_hello" -d -p 80:80 tutum/hello-world
