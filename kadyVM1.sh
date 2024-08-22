#!/bin/bash

docker run -d --name kady-jenkins -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk17
docker exec -it kady-jenkins cat /var/jenkins_home/secrets/initialAdminPassword
